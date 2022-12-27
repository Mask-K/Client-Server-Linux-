#pragma once
#include <iostream>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>

const int max_length = 4096;

class Server{
private:
    unsigned port;
    int socket;
    sockaddr_in server_addr{};
    pthread_t thread_id{};

    static void Operate(int& sock_client);


public:
    Server(unsigned port, int socket);

    ~Server();

    void BindnListen();

    void Accept();
};
