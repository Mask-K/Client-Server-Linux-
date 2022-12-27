#pragma once
#include <iostream>
#include <cstdlib>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <type_traits>
#include <unistd.h>
#include <cstring>

const int max_length = 4096;


class Client{
private:
    int socket;
    sockaddr_in server_addr{};
    char buf[max_length]{};
public:
    Client(unsigned port, int socket, hostent* server);
    ~Client();
    void Connect();
    bool Operate();
};