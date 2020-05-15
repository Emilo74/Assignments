#include <iostream>
#include <fstream>
#include<iomanip>
#include <stdlib.h>

using namespace std;

int main () {


    ifstream fin;
    ofstream fout;
    float bill[100] ,tot[100], internet[100], highestbill, vat[100], minutes[100], sum=0;
    int j=0,ender=1, highestnum, num[100], cablenum[100], telephonenum[100], cable[100], E=0, M=0, T=0, G=0, X=0;
    char temp[100];


    fin.open("customers.txt");

    if (!fin.is_open()){
        cout<< "Error opening input file. Aborting..." ;
        return 0;
    }

    fout.open ("billing.txt");

        if (!fout.is_open()){
        cout<< "Error opening output file. Aborting..." ;
        return 0;
    }



    fout<< "Customer Number     Cable Bill        Phone Bill     Internet Bill          VAT           Total Bill  "<<endl;
    fout<< "======================================================================================================"<<endl;

    for(int i=1; i<=100; i=i+1){

    while (!fin.eof()) {

    fin>>num[i];

    if(num[i]>ender){

    fin>> cablenum[i] >> telephonenum[i] >> temp[i];


    if (cablenum[i] == 1 ) {

        cable[i] = 277;
    }

    else {

        cable[i] = 0 ;
    }


    minutes[i] = telephonenum[i] * 0.69;


    if (temp[i] == 'E'){

        internet[i] = 219.99;
        E = E + 1;
    }



    else {

        if (temp[i] == 'M'){

            internet[i] = 391.29;
            M = M + 1;
        }



        if (temp[i] == 'T'){

            internet[i] = 529.99;
            T = T + 1;
        }

        if (temp[i] == 'G') {

            internet[i] = 1999.99;
            G = G + 1;
        }

        if (temp[i] == 'X') {

            internet[i] = 0;
            X = X + 1;
        }
    }


    bill[i] = minutes[i] + internet[i] + cable[i];

    vat[i] = bill[i] * 0.125;


    tot[i] = vat[i] + bill[i];



    if (tot[i] > highestbill) {

        highestbill = tot[i];
        highestnum = num[i];
    }




j=j+1;



sum = sum + tot[i];

fout << num[i] <<setw(18)<< cable[i] <<setw(18)<< minutes[i] <<setw(20)<< internet[i] <<setw(20)<< vat[i] <<setw(20)<< tot[i] << endl << endl;

}
   else
   {
       fout<<endl;
   }
}
}






    fin.close();

    fout<< "==========================================================================================================" << endl << endl;




    fout<< "The number of customers are : " <<j<< endl;

    fout<< "There are " << E << " customers with Essential internet service." << endl;

    fout<< "There are " << M << " customers with Max internet service." << endl;

    fout<< "There are " << T << " customers with Turbo internet service." << endl;

    fout<< "There are " << G << " customers with Gigabit internet service." << endl;

    fout<< "There are " << X << " customers without internet service." << endl;

    fout<< "The customer with the highest bill is : " << highestnum << endl;

    fout << "The total amount owed by all the customers are : $" << sum << endl;

    fout.close ();





return 0;
}
