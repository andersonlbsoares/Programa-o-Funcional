#include <iostream>

void main(){
    int a, b;
    int c = 1;
    while(c == 1){
        if(a%2 == 0 && b%2 ==0){
            a = a/2;
            b = b/2;
        }else if(a%3 == 0 && b%3 == 0){
            a = a/3;
            b = b/3;
        }else if(a%5 == 0 && b%5 == 0){
            a = a/5;
            b = b/5;
        }else if(a%7 == 0 && b%7 == 0){
            a = a/7;
            b = b/7;
        }else if(a == b){
            a = 1;
            b = 1;
            c = 0;
        }else{
            c = 0;
        }
    }
}