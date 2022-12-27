

#include "Server.h"

void Server::Operate(int &sock_client) {
    char msg_buf[max_length];
    int bytes;
    while (true) {
        bytes = read(sock_client, &msg_buf, max_length);
        if (bytes == 0) {
            std::cout << "A client disconnected.\n";
            break;
        }
        else if (bytes < 0)
            throw std::runtime_error("Error while receiving data");
        else {
            std::string msg = std::string(msg_buf, 0, bytes);
            std::cout << "Some Client's message: " << msg << "\n";
            if (msg == "hello")
                send(sock_client, "world", 5, 0);
            else if (send(sock_client, &msg_buf, bytes, 0) < 0) {
                throw std::runtime_error("Message can't be sent");
            }
        }
    }
    pthread_exit(nullptr);
}

Server::Server(unsigned int port, int socket) : port(port), socket(socket){
    if(!socket)
        throw std::runtime_error("Socket wasn't created");

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr.s_addr = INADDR_ANY;
}

Server::~Server() {
    close(socket);
    std::cout << "Socket is closed\n";
}

void Server::BindnListen() {
    if(bind(socket, reinterpret_cast<sockaddr *>(&server_addr), sizeof(server_addr)) < 0)
        throw std::runtime_error("Bind failed");
    if(listen(socket, SOMAXCONN) < 0)
        throw std::runtime_error("Listen failed");

    std::cout << "Server listens on port " << port << std::endl;
}

void Server::Accept() {
    sockaddr_in client_addr{};
    socklen_t client_addr_size = sizeof(client_addr);
    int sock_client;
    if ((sock_client = accept(socket, reinterpret_cast<sockaddr *>(&client_addr), &client_addr_size)) < 0) {
        throw std::runtime_error("Can't accept a connection");
    }
    char host[NI_MAXHOST];
    char svc[NI_MAXSERV];
    getnameinfo(reinterpret_cast<sockaddr *>(&client_addr), client_addr_size, host, NI_MAXHOST,
                svc, NI_MAXSERV, 0);
    std::cout << "A connection is accepted from Client: "<< svc << std::endl;

    pthread_create(&thread_id, nullptr, reinterpret_cast<void *(*)(void *)>(Server::Operate), new int(sock_client));

}
