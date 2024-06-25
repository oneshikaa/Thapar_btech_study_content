#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netdb.h>
#include<string.h>

int main(){
int comn_sock; 
char data[100], send1[100]; 

int sockID = socket(AF_INET, SOCK_STREAM, 0); 
printf("sockID: %d", sockID); 

struct sockaddr_in servraddr, clientaddr; 
servraddr.sin_family = AF_INET;
servraddr.sin_addr.s_addr = htonl(INADDR_ANY);
servraddr.sin_port = htons(2200); 

bind(sockID, (struct sockaddr *)&servraddr, sizeof(servraddr));
listen(sockID, 100);
while(1){
comn_sock = accept(sockID, (struct sockaddr*)NULL, NULL);
while(1){
bzero(data,100);
recv(comn_sock, data, 100, 0); 

if(strncmp(data, "exit", 4)==0){
break; }
else{
printf("Data recieved: %s", data); 
fgets(send1, 100, stdin); 
send(comn_sock, send1, strlen(send1), 0); 
if(strncmp(send1, "exit", 4)==0){
break; }
}
}
}
close(comn_sock); 

}
