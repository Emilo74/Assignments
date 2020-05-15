#include <iostream>
#include <cmath>
using namespace std;

int main(){

    double money_invested, shares, gained, percent_gained;

    cout<< "Please enter the amount of money to be invested : $" ;
    cin>> money_invested ;
    cout<< endl;

    cout<< "Amount to be invested : $" << money_invested ;
    cout<< endl;

    cout<< "Original cost per share : $161.37" ;
    cout<< endl;

    shares = floor (money_invested / 161.37) ;

    cout<< "Number of shares acquired : " << shares ;
    cout<< endl;

    cout<< "New cost per share (December 31st 2017) : $208" ;
    cout<< endl;

    gained = shares * 46.63 ;

    percent_gained = (gained / (shares * 161.37)) * 100;

    cout<< "Amount gained : $" << gained ;
    cout<< endl;

    cout<< "Percentage gained : " << percent_gained ;
    cout<< "%" ;





    return 0;
}
