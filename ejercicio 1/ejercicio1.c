#include <stdio.h>
#include <ctype.h>
#include <math.h>
#include <string.h>
#define SUCCESS 0
#define ERROR 1

int main(){
    int status=ERROR;
    int temp;
    int isSigned;
    int wholeDigits;
    int fractionaryDigits;
    float resolution=0;
    float rangeupper=0;
    float rangelower=0;
    float rangemodule=0;
    char *end;
    char buf[30];
    int errorCounter=0;

    while(status){
    printf("\nEnter 0 for unsigned, 1 for signed: ");
    do {
        if (errorCounter!=0) printf("\nERROR. Not an integer! Try again!\n\nEnter 0 for unsigned, 1 for signed:");
     if (!fgets(buf, sizeof buf, stdin))
        break;
        buf[strlen(buf) - 1] = 0;
        temp = strtol(buf, &end, 10);
        errorCounter++;
    } while (end != buf + strlen(buf));
    errorCounter=0;
    if(temp==0||temp==1){
        isSigned=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Not a valid integer! Try again!\n");
    }
   
    status=ERROR;
    while(status){
    printf("\nEnter amount of whole digits: ");
    do {
        if (errorCounter!=0) printf("\nERROR. Not an integer! Try again!\n\nEnter amount of whole digits:");
     if (!fgets(buf, sizeof buf, stdin))
        break;
        buf[strlen(buf) - 1] = 0;
        temp = strtol(buf, &end, 10);
        errorCounter++;
    } while (end != buf + strlen(buf));
    errorCounter=0;
    if(0<=temp&&temp<=1000){
        wholeDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Not a valid integer! Try again!\n");
    }
   
    //FRACTIONARY
    status=ERROR;
    while(status){
    printf("\nEnter amount of fractionary digits: ");
    do {
        if (errorCounter!=0) printf("\nERROR. Not an integer! Try again!\n\nEnter amount of fractionary digits:");
     if (!fgets(buf, sizeof buf, stdin))
        break;
        buf[strlen(buf) - 1] = 0;
        temp = strtol(buf, &end, 10);
        errorCounter++;
    } while (end != buf + strlen(buf));
    errorCounter=0;
    if(0<=temp&&temp<=1000){
        fractionaryDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Not a valid integer! Try again!\n");
    }

    resolution=pow(2.00,(-1*(fractionaryDigits)));
    if(!isSigned){
        while(wholeDigits>0)
        rangeupper+=pow(2,((--wholeDigits)));
        while(fractionaryDigits>0)
        rangeupper+=pow(2,(-(fractionaryDigits--)));
        rangelower=0;
        rangemodule=(rangeupper-rangelower)/resolution;
    }
    else{
        while(wholeDigits>0)
        rangeupper+=pow(2,((--wholeDigits)-1));
        while(fractionaryDigits>0)
        rangeupper+=pow(2,(-(fractionaryDigits--)));
        rangelower=(-rangeupper);
        rangemodule=(rangeupper-rangelower)/resolution+1;
    }

    printf("When using this convention, the resolution for representable numbers is %f, the range is [%f,%f], and the amount of different numbers is %f.",resolution,rangelower,rangeupper,rangemodule);
    
}