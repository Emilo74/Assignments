#include <iostream>
#include <cmath>
using namespace std;

int main(){

    double length, width, perimeter, rolls, cost, vat, tcost;

    cout<< "Please enter the length of the fence (m) : " ;
    cin>> length;
    cout<< endl;

    cout<< "Please enter the width of the fence (m) : " ;
    cin>> width;
    cout<< endl;

    perimeter = (length + width ) * 2 ;

    rolls = perimeter / 100;

    cost = ceil (rolls) * 750 ;

    vat =  (cost * 12.5) / 100 ;

    tcost = vat + cost ;

    cout<< "Length of fence : " << length ;
    cout<< endl;

    cout<< "Width of fence : " << width ;
    cout<< endl;

    cout<< "Number of rolls of wire needed : " << ceil (rolls) ;
    cout<< endl;

    cout<< "Cost of wire needed : $" << cost ;
    cout<< endl;

    cout<< "VAT : $" << vat ;
    cout<< endl;

    cout<< "Total cost : $" << tcost ;




    return 0;
}
