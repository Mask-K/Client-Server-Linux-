#include "Client.h"

int main(int argc, char** argv){
    try{
        if (argc != 3)
        {
            std::cerr << "Wrong parameter amount\n";
            std::cerr << "Should have been <ip> <port>\n";
            return 1;
        }
        Client client(std::atoi(argv[2]),
                      socket(AF_INET,SOCK_STREAM, 0), gethostbyname(argv[1]));

        client.Connect();

        do {
            if(!client.Operate())
                break;
        } while (true);

    }
    catch(const std::exception& e){
        std::cerr << e.what() << std::endl;
    }


}