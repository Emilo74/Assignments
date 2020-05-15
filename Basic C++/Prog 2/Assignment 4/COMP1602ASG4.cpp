#include <iostream>
#include <fstream>
#include <cstdlib>
#include <string>

#define MAX_C 100

using namespace std;

struct Flights {
 int dist = 0;
 string type;
 int capacity;
 int freq;
};

struct Cities {
  string name;
  string code;
  string country;
  int pop;
};

int readCities(Cities cities[]){

  Cities c;

  int numCities = 0;
   int pop;
   string name,code,country;

   ifstream inputCities;
   inputCities.open("cities.txt");

   if (!inputCities.is_open()) {
cout << "Input file, cities.txt, could not be opened for reading." << endl;
return 1;
}

inputCities >> name;

while(name != "END"){
    c.name=name;
    inputCities >> c.code;
    inputCities >> c.country;
    inputCities >> c.pop;

    cities[numCities] = c;
    numCities++;
    inputCities >> name;
}
 inputCities.close();
     return numCities;
  }

void initarr(Flights flights[][MAX_C]){
  for(int i=0;i<MAX_C;i++){
    for(int j=0;j<MAX_C;j++){
        flights[i][j].dist=0;
        flights[i][j].capacity=0;
        flights[i][j].freq=-1;
    }
  }
  return;
}

int searchCities(Cities c[],string key,int countCities){
  for(int i=0;i<countCities;i++){
    if(c[i].code==key)
        return i;
  }
  return -1;
 }

void readFlights(Flights f[][MAX_C],Cities c[],int countCities){
   ifstream inputFlights;
   inputFlights.open("flights.txt");

int count;
string origin,dest,type;
int dist,capacity,freq,i,j;

inputFlights >> origin;
while(!(origin=="END")){
      inputFlights>> dest >> dist >> type >> capacity >> freq;
    i=searchCities(c,origin,countCities);
    j=searchCities(c,dest,countCities);
    count=0;
    f[i][j].dist=dist;
    f[i][j].type=type;
    f[i][j].capacity=capacity;
    f[i][j].freq=freq;
    count++;
    inputFlights >> origin;
    }
    inputFlights.close();
 }

int menu(){

    int ans;

cout << "Fly High Airways: Flight Information System " << endl;
cout << "============================================ " << endl << endl;
cout << "1. Query for City by Name" << endl;
cout << "2. Query for City by Airport Code" << endl;
cout << "3. Query for a Direct Flight between Two Cities" << endl;
cout << "4. Query for 1-Stop Flights between Two Cities" << endl;
cout << "5. Query for Flights from a City" << endl;
cout << "6. Query for Flights to a City" << endl;
cout << "7. Display Statistics" << endl;
cout << "8. Quit" << endl << endl;
cout << "Please select an option : ";
cin >> ans;
cout << endl;



return ans;
}

void option1(Cities c[],int numCities){

  string cityName;
  cout << "Please enter the name of the city: ";
        cin >> cityName;
        cout << endl;
        for(int i=0;i<numCities;i++){
            if(c[i].name==cityName){
                cout << "City: " << c[i].name << endl;
                cout << "Airport Code: " << c[i].code << endl;
                cout << "Country: " << c[i].country << endl;
                cout << "Population: " << c[i].pop << endl << endl;
                return;
            }
        }
       cout <<"City does not exist. "<<endl<< endl;
       return;
}

void option2(Cities c[],int numCities){
  string citycode;
  cout << "Please enter the airport code of the city: ";
        cin >> citycode;
        cout << endl;
        for(int i=0;i<numCities;i++){
            if(c[i].code==citycode){
                cout << "City: " << c[i].name << endl;
                cout << "Airport Code: " << c[i].code << endl;
                cout << "Country: " << c[i].country << endl;
                cout << "Population: " << c[i].pop << endl << endl;
                return;
            }
        }
       cout <<"A city with this airport code does not exist."<<endl;
       return;
}

void option3(Flights flights[][100],Cities c[],int numCities){
 string origin,dest;
 int i,j;
 cout <<"Please enter the airport code of the origin: ";
 cin >> origin;
 cout <<"Please enter the airport code of the destination: ";
 cin >> dest;
 cout << endl;
 i=searchCities(c,origin,numCities);
 j=searchCities(c,dest,numCities);

if(i==-1||j==-1){
        cout << "One of these cities do not exist." << endl << endl;
}
   else{
        if(flights[i][j].dist > 0){
            cout << "There are daily flights between " << origin << " and " << dest << endl;
            cout << "Aircraft: " << flights[i][j].type << endl;
            cout << "Capacity: " << flights[i][j].capacity << endl;
            cout << "Distance: " << flights[i][j].dist << endl;
         }
          else  {
            cout << "No direct flights from " << origin << "to" << dest << endl;
        }
        if(c[i].code == c[j].code){
            cout << "Error: Origin and Destination cities are the same. " << endl;
        }

    }
}

void option4(Flights flights[][100],Cities c[],int countCities){
  string origin,dest,middle;
  int i,j;
  bool check=false;

 cout << "Please enter the airport code of the origin: ";
 cin >> origin;
 cout << endl;
 cout << "Please enter the airport code of the destination: ";
 cin >> dest;
 cout << endl;

    i=searchCities(c,origin,countCities);
    j=searchCities(c,dest,countCities);

 if(i==-1||j==-1){
        cout << "One of these cities does not exist. "<< endl;
 return;
 }

 for(int a=0;a<countCities;a++){
   if(flights[i][a].dist != 0){
     if(flights[a][j].dist != 0){
            middle =c[a].code;
            check = true;
        cout << "The following are one stop flights going from " << origin << "to" << dest << endl;
        cout << "Leg 1: " << origin << " to " << middle << endl;
        cout << "Leg 2: " << middle << " to " << dest << endl<<endl;
     }
  }
 }
 if(!check)
    cout << "There are no one stop flights from" << origin << "to" << dest << endl;
}

void option5(Flights flights[][100],Cities c[],int countCities){
  string origin;
  int i;
  cout <<"Please enter the aiport code of the city of origin: ";
  cin >> origin;
  cout << endl;
  i=searchCities(c,origin,countCities);

if(i==-1){
    cout <<"A city with this airport code does not exist. "<<endl;
    return;
}
cout <<"The following are the flights from " <<origin<< ":" << endl << endl;
for(int j=0;j<countCities;j++){
    if(flights[i][j].dist != 0){
        cout << "Aircraft: " << flights[i][j].type << endl;
        cout << "Capacity: " << flights[i][j].capacity << endl;
        cout << "Distance: " << flights[i][j].dist << endl << endl;
    }
}
 }

void option6(Flights flights[][100],Cities c[],int countCities){
  string dest;
  int i,j;
  bool found = false;
  cout <<"Please enter the airport code of the destination city. " << endl;
  cin >>dest;
  j=searchCities(c,dest,countCities);

if(j==-1){
    cout << "City entered does not exist. "<<endl;
    return;
}

for(int i=0;i<countCities;i++){
    if(flights[i][j].dist>0){
        cout <<"All the flights leaving " <<dest<< " are: " << endl << endl;
        cout << "Aircraft: " << flights[i][j].type << endl;
        cout << "Capacity: " << flights[i][j].capacity << endl;
        cout << "Distance: " << flights[i][j].dist << endl << endl;

      found = true;
    }
  }
  if(!found)
     cout << "There are no flights leaving this destination." << endl;
 }

void option7(Flights flights[][100],Cities c[],int countCities){
   int max=0;
int totaldist;

   for(int i=0;i<countCities;i++){
    for(int j=0;j<countCities;j++){
        if(flights[i][j].dist > max)
            max=flights[i][j].dist;

            if(flights[i][j].dist > 0){
            if(flights[i][j].freq == 0){
                totaldist=totaldist+(flights[i][j].dist*7);
            }
            else if(flights[i][j].freq==1){
                totaldist=totaldist+(flights[i][j].dist*2);
            }
            else if(flights[i][j].freq==2){
                totaldist=totaldist+(flights[i][j].dist*1);
            }
            }
    }
   }

   cout << "The longest direct flight is " << max << "." << endl;
   cout << "The total number of miles is " << totaldist << "." << endl << endl;
 }

int main(){

 Cities cities[MAX_C];
 Flights flights[MAX_C][MAX_C];
 int numCities,ans;
 numCities = readCities(cities);
 initarr(flights);
 readFlights(flights,cities,numCities);
 string city,origin,dest;
 int loc;

 ans = menu();



   while(ans != 8){

        if(ans<1 || ans >8)
    cout<< "Please enter a valid choice!!!" << endl << endl;


    if(ans == 1){
      option1(cities,numCities);
    }
    else if(ans == 2){
        option2(cities,numCities);
    }

    else if(ans == 3){
        option3(flights,cities,numCities);
    }

    else if(ans ==4){
        option4(flights,cities,numCities);
    }

    else if(ans ==5){
       option5(flights,cities,numCities);
    }

    else if(ans ==6){
       option6(flights,cities,numCities);
 }

    else if(ans == 7){
       option7(flights,cities,numCities);
 }

 ans = menu();
 }


return 0;

}

