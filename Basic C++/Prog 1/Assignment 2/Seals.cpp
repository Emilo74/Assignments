#include <iostream>
#include <iomanip>

using namespace std;

int main(){

    int population = 0 , year = 2007 ,death1 = 0 , death2 = 0 , birth = 0 ;
    float born = 0 , die1 = 0 , die2 = 0 ;

    cout<< "Enter the current population : " ;
    cin>> population ;
    cout<< endl ;

    cout<< "Enter the % of seals born each year : " ;
    cin>> born ;
    cout<< endl;

    cout<< "Enter the % of seals that die due to over hunting : " ;
    cin>> die1 ;
    cout<< endl;

    cout<< "Enter the number of seals that die due to diseases and oil spills : " ;
    cin>> die2 ;
    cout<< endl;


    cout<< "Year          Deaths          Deaths          Births          Current" << endl;
    cout<< "          (Over fishing)   (Oil spills)                      Population" << endl;
    cout<< "------------------------------------------------------------------------" << endl;


    for (year = 2007 ; year <=2017 ; year++) {

        cout<< year << setw(14) << death1 << setw(16) << death2 << setw(16) << birth << setw (17) << population << endl ;

        death1 = population * (die1/100);
        death2 = population * (die2/100) ;
        birth = population * (born/100) ;
        population = (population + (birth-(death1+death2))) ;
    }

    cout<< "------------------------------------------------------------------------" ;













    return 0;
}
