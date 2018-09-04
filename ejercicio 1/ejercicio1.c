#include <stdio.h>
#include <ctype.h>
#include <math.h>
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
    
    while(status){
    printf("\nEnter 0 for unsigned, 1 for signed: ");
    scanf("%d",&temp);
    printf("%d",temp);
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
    scanf("%d",&temp);
    if(0<=temp&&temp<=1000){
        wholeDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Try again!\n");
    }

    status=ERROR;
    while(status){
    printf("\nEnter amount of fractionary digits: ");
    scanf("%d",&temp);
    if(0<=temp&&temp<=1000){
        fractionaryDigits=temp;
        status=SUCCESS;
        }
    else 
        printf("\nERROR. Try again!\n");
    }

    resolution=pow(2.00,(-1*(fractionaryDigits)));
    if(!isSigned){
        rangeupper=pow(2,(-(wholeDigits)));
        rangelower=0;
        rangemodule=(rangeupper-rangelower)/resolution;
    }
    else{
        rangeupper=(pow(2,(-(wholeDigits)))/2)-1;
        rangelower=(-((pow(2,(-(wholeDigits)))/2)));
        rangemodule=(rangeupper-rangelower)/resolution;
    }

    printf("When using this convention, the resolution for representable numbers is %f, the range is [%f,%f], and the amount of different numbers is %f.",resolution,rangelower,rangeupper,rangemodule);
    getchar();
}