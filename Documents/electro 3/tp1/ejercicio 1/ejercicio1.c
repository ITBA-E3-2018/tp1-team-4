#include <stdio.h>
#include <ctype.h>
#define SUCCESS 0
#define ERROR 1

int main(){
    bool status=ERROR;
    int temp;
    bool isSigned;
    int wholeDigits;
    int fractionaryDigits;
    
    while(status){
    printf("\nEnter 0 for unsigned, 1 for signed: ");
    temp = getchar();
    if(temp==0||temp==1){
        isSigned=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Try again!\n");
    }
   
    status=ERROR;
    while(status){
    printf("\nEnter amount of whole digits: ");
    temp = getchar();
    if(isdigit(temp)){
        wholeDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Try again!\n");
    }

    status=ERROR;
    while(status){
    printf("\nEnter amount of fractionary digits: ");
    temp = getchar();
    if(isdigit(temp)){
        fractionaryDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Try again!\n");
    }

    
}