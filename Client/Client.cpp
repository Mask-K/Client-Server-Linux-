#include "Client.h"

Client::Client(unsigned int port, int socket, hostent *server) : socket(socket){
    if (socket < 0)
        throw std::runtime_error("Socket wasn't created");

    if (!server)
        throw std::runtime_error("No such host");

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);

}

Client::~Client() {
    close(socket);
    std::cout << "Socket is closed.\n";
}

void Client::Connect() {
    if (connect(socket, reinterpret_cast<sockaddr *>(&server_addr), sizeof(server_addr)) < 0) {
        throw std::runtime_error("Can't connect to the server");
    }
    std::cout << "Connected to the server\n";
}

bool Client::Operate() {

    std::string temp;
    std::cout << "Enter message: ";
    std::getline(std::cin, temp, '\n');
    std::strcpy(buf, temp.c_str());

    if (!strlen(buf)) return true;
    else if (!strcmp(buf, "disconnect")) return false;

    int bytes_send = send(socket, &buf, strlen(buf), 0);
    if (bytes_send < 0)
        throw std::runtime_error("Can't send message");

    int bytes_recv = read(socket, &buf, max_length);

    if (bytes_recv < 0) {
        std::cerr << "Message cannot be received!\n";
    }
    else if (bytes_recv == 0) {
        std::cout << "Server is disconnected.\n";
        return false;
    }
    else {
        std::cout << "Server's response: " << std::string(buf, 0, bytes_recv) << "\n";
    }
    return true;
}
