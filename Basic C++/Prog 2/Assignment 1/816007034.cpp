#include <iostream>
#include <fstream>
#include <cmath>
#include <stdlib.h>

using namespace std;


void printstar(int k){

    float l;
    int m;

    l = (k * 1.0)/5;
    m = ceil(l);

    for(int i=0; i < m; i++)
        cout<< "*";
}

int main() {

ifstream fin;
ofstream fout;
ofstream gout;
int glucose[500], num1, i=-1, highest=0, lowest=999, high=0, low=0, tot=0, noreading=0, spike=0;
int bigspike = 0, days=0, n;
float percent=0;

fin.open("readings.txt");
fout.open("errors.txt");
gout.open("results.txt");


cout<< "Please enter a number, n, to see if there was three consecutive readings that were higher than n : ";
cin>> n;
cout<< endl << endl;



fin>> num1;


while(num1 != -1){


    if((num1 < 20 && num1 != 0) || (num1 > 400)){
        fout<< num1 << endl;
}

    else{

        i = i + 1;

        tot = tot + 1;

        num1 = glucose[i];

        if(glucose[i] == 0)
        noreading = noreading + 1;


        if(glucose[i] >= highest){
            highest = glucose[i];
            high = i;
        }


        if(((glucose[i] != 0) && (glucose[i+1] != 0)) && ((glucose[i + 1] - glucose[i] >= 40) || (glucose[i] - glucose[i+1] >=40))){

           spike = spike + 1;

           if((glucose[i] - glucose[i+1] >= bigspike) || (glucose[i+1] - glucose[i] >= bigspike))
            bigspike = i;
        }
        }

        fin>> num1;

}



fin.close();
fout.close();



    gout<< "The blood sugar level was highest on day ";

    for (int j =0; j<= tot; j++){

        if(glucose[j] == highest)
            gout<< j+1 << " ";
    }

    gout<< ". The reading was : " << highest << endl << endl;


    for(int z=0; z<=tot; z++){

        if((glucose[z] > n) && (glucose[z+1] > n) && (glucose[z+2] > n)){

            gout<< "Day " << z+1 << " the sugar level was measured at " << glucose[z] << "." << endl;
            gout<< "Day " << z+2 << " the sugar level was measured at " << glucose[z+1] << "." << endl;
            gout<< "Day " << z+3 << " the sugar level was measured at " << glucose[z+2] << "." << endl << endl;
        }
        }


        percent = (noreading / (tot * 1.0)) * 100;

        gout<< "The person did not take his/her readings " << noreading << " time/s." << endl;
        gout<< "Their readings were not taken " << percent << "% of the time." << endl << endl;
        gout<< "There were " << spike << " spikes in total and the biggest spike occurred in days " << bigspike << " and " << bigspike + 1 << "." << endl << endl;

        int start, stop, temp;
        bool level = false;

        cout<< "Please enter your start date to check : " ;
        cin>> start;
        cout<< endl;

        while((start < 0) || (start > tot)){
            cout<< "Please enter a valid start date! ";
            cin>> start;
            cout<< endl;
        }

        cout<< "Please enter your end date to check : ";
        cin>> stop;
        cout<< endl;

        while((stop < 0) || (stop > tot)){
            cout<< "Please enter a valid end date! ";
            cin>> stop;
            cout<< endl;
        }


        if(stop > start){
            temp = stop;
            stop = start;
            start = temp;
        }


        for(int k = start; k<=stop; k++){

            while(glucose[k+1] > glucose[k])
                level = true;

        }

        if(level == true)
            gout<< "The readings were strictly increasing." << endl << endl;



        for(int k = start; k<=stop; k++){

            while(glucose[k+1] < glucose[k])
                level = true;


        }

        if (level == true)
            gout<< "The readings were strictly decreasing." << endl << endl;

        else
            gout<< "The readings were neither strictly increasing or decreasing." << endl << endl;



        int exceed=0, weekend=0;

        if(glucose[0] > 130)
            exceed = exceed + 1;

        for (int l = 6; l<= tot; l = l + 7){

            if(glucose[l] > 130)
                exceed = exceed + 1;

            if(glucose[l+1] > 130)
                exceed = exceed + 1;

            weekend = weekend + 1;

        }


        gout<< "The person exceeded the normal blood sugar level on " << exceed << " occasions or " << exceed/2 << " weekends." << endl;
        gout<< "A total of " << weekend << " weekends were analysed." << endl << endl << endl << endl << endl;




        int seventy=0, eighty=0, ninty=0, one=0, oneten=0, onetwenty=0, onethirty=0;


        for (int m=0; m<=tot; m++){

            if((glucose[m] >= 70) && (glucose[m] <= 79))
               seventy = seventy + 1;

            if((glucose[m] >= 80) && (glucose[m] <= 89))
                eighty = eighty + 1;

            if((glucose[m] >= 90) && (glucose[m] <= 99))
                ninty = ninty + 1;

            if((glucose[m] >= 100) && (glucose[m] <= 109))
                one = one + 1;

            if((glucose[m] >= 110) && (glucose[m] <= 119))
                oneten = oneten + 1;

            if((glucose[m] >= 120) && (glucose[m] <= 129))
                onetwenty = onetwenty + 1;

            if((glucose[m] >= 130))
                onethirty = onethirty + 1;

        }


        cout<< "70 - 79   |" ;
        printstar(seventy);
        cout<< "*";
        cout<< endl;

        cout<< "80 - 89   |" ;
        printstar(eighty) ;
        cout<< endl;

        cout<< "90 - 99   |" ;
        printstar(ninty) ;
        cout<< endl;

        cout<< "100 - 109 |" ;
        printstar(one) ;
        cout<< endl;

        cout<< "110 - 119 |" ;
        printstar(oneten);
        cout << endl;

        cout<< "120 - 129 |" ;
        printstar(onetwenty) ;
        cout<< endl;

        cout<< "  >130    |" ;
        printstar(onethirty);
        cout << endl << endl;




gout.close();



return 0;

}

