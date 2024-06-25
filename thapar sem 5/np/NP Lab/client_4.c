#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netdb.h>
#include<string.h>

int main(){
struct sockaddr_in servraddr; 
char sendline[100], recieveline[100]; 

int sockfd = socket(AF_INET, SOCK_STREAM, 0); 

servraddr.sin_family = AF_INET;
servraddr.sin_addr.s_addr = htonl(INADDR_ANY);
servraddr.sin_port = htons(2200); 

connect(sockfd, (struct sockaddr*)&servraddr, sizeof(servraddr));

while(1){

fgets(sendline, 100, stdin); 
send(sockfd, sendline, strlen(sendline), 0); 
if(strncmp(sendline, "exit", 4)==0){break; }
else{
recv(sockfd, recieveline, 100, 0); 
if(strncmp(recieveline, "exit", 4)==0){break; }
else{
printf("From server: %s", recieveline);
bzero(recieveline, 100); 
}
}


}

}
