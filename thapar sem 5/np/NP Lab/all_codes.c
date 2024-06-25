#include<stdio.h>
#include<string.h>
#include<netdb.h>
#include<sys/types.h>
#include<sys/socket.h>

// int main(){
//     //server side using tcp
//     int comm_sock; //temporary socket for communication
//     char data[100];

//     int sockid = socket(AF_INET,SOCK_STREAM,0);
//     struct sockaddr_in server_addr;
//     server_addr.sin_family = AF_INET ;
//     server_addr.sin_port = htons(2200);
//     server_addr.sin_addr.s_addr = htonl(INADDR_ANY);

//     bind(sockid,(struct sockadd*)&server_addr,sizeof(server_addr));
//     listen(sockid,100);

//     while(1){
//         comm_sock = accept(sockid,(struct sockaddr*)NULL,NULL);
//         recv(comm_sock,data,100,0);

//         printf("data received : %s",data);
//         send(comm_sock,data,strlen(data),0);

//         close(comm_sock);
//     }
// }

int main(){
    //client side using tcp
    int comm_sock;
    char senddata[100],receivedata[100];

    int sockid = socket(AF_NET,SOCK_STREAM,0);
    struct sockaddr_in client_sock;
    client_sock.sin_port = htons(2200);
    client_sock.sin_family = AF_NET;
    client_sock.sin_addr.s_addr = htonl(INADDR_ANY) ;

    connect(scokid,(struct sockadrr_in)&client_sock,sizeof(client_sock));
    fgets(senddata,100,0);
    send(sockid,senddata,strlen(senddata),0);
    recv(sockid,receivedata,100,0);
    printf("echoback given by server : %s",receivedata);
}

int main(){
    //server side using udp
    int sockid = socket(AF_NET,SOCK_DGRAM,0);

    struct sockaddr_in server_side,client_side;
    server_side.sin_port = htons(2200) ;
    server_side.sin_family = AF_INET ;
    server_side.sin_addr.s_addr = htonl(INADDR_ANY);

    bind(sockid,(struct sockaddr_in*)&client_side,sizeof(client_side));
    int num = recvfrom(sockid,data,size(data),0,(struct sockaddr_in*)&client_side,sizeof(client_side));
    sendto(sockid,data,size(data),0,(struct sockaddr_in*)&client_side,sizeof(client_side));

    close(sockid);

}