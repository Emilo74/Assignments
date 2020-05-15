#include <iostream>
using namespace std;

/********** DO NOT ALTER THIS CODE **********/
void printStar(int numStars){
    int i;
    for (i=1; i<=numStars; i = i+1)
        cout<<"*";
}

void printSpace(int numSpaces){
    int i;
    for (i=1; i<=numSpaces; i = i+1)
        cout<<" ";
}

void printVertical(int numVertical){
    int i;
    for (i=1; i<=numVertical; i = i+1)
        cout<<"|";
}


void printHorizontal(int numHorizontal){
    int i;
    for (i=1; i<=numHorizontal; i = i+1)
        cout<<"-";
}


/********** WRITE YOU CODE IN THE main **********/
int main(){

    int roof , height ;
    roof = 0;
    height = 0;

    cout<< "Please enter the height of the roof : " ;
    cin>> roof;
    cout<< endl ;

    cout<< "Please enter the height of the house : " ;
    cin>> height ;
    cout<< endl ;


   for (int k = 0; k<=roof ; k++) //This prints the roof
    {
        printSpace (roof-k);
        printStar((k*2)- 1);
        cout<< endl;
    }

    int base = (2*roof) - 1;

    for (int j = 0 ; j<=height ; j++)
    {
        if (j<= (height/2))
        {
            printSpace (1);
            printVertical (1);
            printSpace (base - 4);
            printVertical (1) ;
            printSpace (1);
            cout<< endl;
        }

        else {

            printSpace (1);
            printVertical (1);
            printStar ((base-2)/2) ;
            printSpace ((base - 5 )/2);
            printVertical (1) ;
            printSpace (1);
            cout<< endl;
            }}

        printSpace (1) ;
        printHorizontal (base-2) ;











    return 0;
}
