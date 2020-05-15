#include <iostream>
#include <fstream>

using namespace std;

// I think my program is working quite good, it's not perfect though. It is a bit messy and may be a bit difficult to understand. Please bare with me.


float toFarenheit (int a){

    float f;

    f = ((a * 9.0)/5) + 32;

    return f;

}


bool isLeapYear (int year){

    if (year % 400 == 0)
        return true;

    if ((year % 4 == 0) && (year % 100 != 0))
        return true;

return false;


    }


int startindex (int year, int month){

    int i;

    if(!(isLeapYear(year))) {

        if (month == 1)
            i = 0;

        else {

              if(month == 2)
                i = 31;

              if (month == 3)
                i = 59;

              if (month == 4)
                i = 90;

              if (month == 5)
                i = 120;

              if (month == 6)
                i = 151;

              if (month == 7)
                i = 181;

              if (month == 8)
                i = 212;

              if (month == 9)
                i = 243;

              if (month == 10)
                i = 273;

              if (month == 11)
                i = 304;

              if (month == 12)
                i = 334;
        }}

        else {

            if (isLeapYear(year)){

                if (month == 1)
                    i = 0;

                else {

                      if (month == 2)
                        i = 31;

                      if (month == 3)
                        i = 60;

                      if (month == 4)
                        i = 91;

                      if (month == 5)
                        i = 121;

                      if (month == 6)
                        i = 152;

                      if (month == 7)
                        i = 182;

                      if (month == 8)
                        i = 213;

                      if (month == 9)
                        i = 244;

                      if (month == 10)
                        i = 274;

                      if (month == 11)
                        i = 305;

                      if (month == 12)
                        i = 335;
                }
            }
        }

        return i;
}


int main () {


    ifstream fin;
    ofstream fout;
    int num1, num2, num3, days, location,  low=9999, dif=0, sep, mar1,mar2, dec, feb, a, b, c, d, e, f, g;
    float temp1[366], temp2[366], highest= -9999, lowest= 9999, high=0, high1=0, lowdec=9999, difmax=-9999;
    float avgmin, avgmax, sum1=0, sum2=0, temperature;


    fin.open("temp.txt");
    fout.open("results.txt");

    fin>> num1;

    if (isLeapYear(num1))
        days = 366;

    else
        days = 365;



        for(int i=0; i<days ; i++){

        fin >> num2 >> num3;

        temp1[i] = toFarenheit(num2);
        temp2[i] = toFarenheit(num3);

        if (temp1[i] < lowest){
            lowest = temp1[i];
        }
        if (temp2[i] > highest){
            highest = temp2[i];
        }
        }

        fout<< "Part d)" << endl << endl;
        fout<< "The highest temperature for the year is " << highest << " degrees Farenheit." << endl;
        fout<< "The lowest temperature for the year is " << lowest << " degrees Farenheit." << endl << endl;


        fin.close();


        a = startindex(num1, 3);
        b = startindex(num1, 4);


        for (int j = a; j < b; j++){

            if (temp2[j] > high){
                high = temp2[j];
                mar1 = j - (a - 1);
            }

            if (temp2[j] > high1 && temp2[j] != high) {
                high1 = temp2[j];
                mar2 = j - (a - 1);
            }}
        fout<< "Part e) i." << endl << endl;
        fout<< "The two days in March with the highest temperatures are the " << mar1 << "th and the " << mar2 << "th" << endl << endl;


        c = startindex(num1, 12);

        for (int k = c; k< days; k++){

        if (temp1[k] < lowdec){
            lowdec = temp1[k];
            dec = k - (c - 1);
        }}

        fout<< "Part e) ii." << endl << endl;
        fout<< "The day in December with the lowest temperature is the " << dec << "th" << endl << endl;


        d = startindex(num1, 9);
        e = startindex(num1, 10);

        for (int l = d; l < e; l++){

            if ((temp2[l] - temp1[l]) > difmax){
                difmax = temp2[l] - temp1[l];
                sep = l - (d - 1);
            }
        }

        fout<< "Part e) iii." << endl << endl;
        fout<< "The day in September when the difference between the highest and lowest temperature was the greatest is the " << sep << "st." << endl << endl;



        f = startindex(num1, 2);
        g = startindex(num1, 3);

        int z = 0;

        for (int m = f; m < g; m++){
            sum1 = sum1 + temp1[m];
            sum2 = sum2 + temp2[m];
            z = z + 1;
            }


        avgmin = sum1 / z ;
        avgmax = sum2 / z ;

        fout<< "Part e) iv." << endl << endl;
        fout<< "The average maximum temperature for the month of February is " << avgmax << " degrees Farenheit." << endl;
        fout<< "The average minimum temperature for the month of February is " << avgmin << " degrees Farenheit." << endl;
        fout<< "The days in which the temperature went above the average temperature in February are : " << endl;

        for (int n = f; n < g; n++){

            if (temp2[n] > avgmax){
                feb = n - (f - 1);
                fout<< feb << "th " << endl;
            }}



        fout<< endl << endl;




        cout<< "Please enter a temperature in Celsius : ";
        cin>> temperature;

        float ab;

        ab = toFarenheit(temperature);

        fout<< "Part f)" << endl << endl;
        fout<< "The days of the year where the temperature was over " << ab << " degrees Farenheit (if any) in three consecutive days were : " << endl << endl;




            for (int o = 0; o < days ; o++){

            if (temp2[o] > ab && temp2[o+1] > ab && temp1[o+2] > ab){

                    fout<< "Days : " << o << ", " << o + 1 << ", " << o + 2 << "." << endl;

            }
            else
                fout<< "";
            }



         fout.close();



return 0;
}

