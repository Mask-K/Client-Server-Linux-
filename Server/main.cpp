#include "Server.h"

int main(int argc, char** argv){
    try{

        unsigned port = 12345;
        if (argc > 2)
            throw std::runtime_error("Too many parameters. The only is <port>. Default = 12345");
        if(argc == 2)
            port = atoi(argv[1]);

        Server server(port, socket(AF_INET, SOCK_STREAM, 0));
        server.BindnListen();


        while(true) {
            server.Accept();
        }
    }
    catch(const std::exception& e){
        std::cerr<<"An error occurred: " << e.what() << std::endl;
    }

    return 0;
}