#include <iostream>
#include <cstring>
#include <fstream>

using namespace std;

struct Word {

    char word[50];
};

int printMenu(){
    int num;
    cout<< "Spell Checker for Different Languages" << endl;
    cout<< "--------------------------------------------" << endl << endl;
    cout<< "1. Load dictionary [English, French, Spanish]" << endl;
    cout<< "2. Load passage" << endl;
    cout<< "3. Display passage" << endl;
    cout<< "4. Spell check passage (with statistics)" << endl;
    cout<< "5. Quit" << endl << endl;
    cout<< "Please enter a choice : ";
    cin>> num;
    cout<< endl << endl;
    return num;
}

bool isLetter(char ch){
    if(ch>= 'A' && ch <= 'Z')
        return true;
    if(ch>= 'a' && ch<= 'z')
        return true;
    if((ch == '-') || (ch == 39))
        return true;
    return false;
}

bool isUppercase(char ch){
    if(isLetter(ch)){
     if(ch>= 'A' && ch<= 'Z')
       return true;
    }
    return false;
}

bool isLowercase(char ch){
    if(isLetter(ch)){
        if(ch>= 'a' && ch<= 'z')
        return true;
    }
    return false;
}

char lowertoUpper(char ch) {
    if (isLowercase(ch))
    ch = ch - 32;
    return ch;
}

char uppertoLower(char ch){
    if(isUppercase(ch))
       ch = ch + 32;
    return ch;
}

int readWordsDictionary(Word words[], char language[]){
    ifstream fin;
    int i = 1, j=0;
    fin.open(language);
    if(!fin.is_open()){
        cout<< language << " could not be opened." << endl;
        return -1;
    }
    char c[50];
    fin >> c;
    while(!fin.eof()){
        strcpy(words[i].word,c);
        i++;
        fin>> c;
    }
    cout<< "Dictionary was succesfully loaded." << endl << endl;
    return i;
}

int option1(Word words[], char ch){
    int a;
    if(ch == 'E')
        a = readWordsDictionary(words,"dictionary-en.txt");

    if(ch == 'F')
        a = readWordsDictionary(words,"dictionary-fr.txt");

    if(ch == 'S')
        a = readWordsDictionary(words,"dictionary-es.txt");

    if(ch == 'M'){
        return -1;
    }
    return a;
}

int loadPassage(char passage[], char language[]){
    ifstream fin;
    fin.open(language);
    if (!fin.is_open()) {
        cout << endl << endl << "The file '" << language << "' could not be opened." << endl;
    return -1;
    }
    int i=0;
    char ch;

    fin >> noskipws;
    fin >> ch;
    while (!fin.eof()) {
        passage[i] = ch;
        i = i + 1;
        fin >> ch;
    }
    passage[i] = '\0';
    fin.close();
    return i;
}

int option2(char passage[], char language[]){
    int a;
    a = loadPassage(passage,language);
    if(a!= -1)
        cout<< endl << endl<< "---Passage was succesfully loaded---"  << endl << endl << endl;
    return a;
}

void option3(char passage[], char language[]){
    int a = loadPassage(passage,language);
    if(a == -1)
        cout<< "You must load a passage first!!! " << endl << endl;
    else
        cout<< passage << endl << endl << endl;
}

int getWord (char data[], int start, Word w) {
    int i, j;
    char a;

    i = start;

    while (!isLetter(data[i])){
        i = i + 1;
    }
    j = 0;
    while (isLetter(data[i])) {
        a = uppertoLower(data[i]);
        w.word[j] = a;
        i = i + 1;
        j = j + 1;
    }
    w.word[j]= '\0';
    return i;
}

int getWords(char passage[], Word w[]) {
    int i=0,j,k=0;
    Word word[1000];
    int wordCount=0;

    j = strlen(passage);
    while (i < j ) {
        //cout<<"I = "<<i<<endl;
        //i++;
        i = getWord(passage, i, word[k]);
        w[k] = word[k];
        k++;
        wordCount = wordCount + 1;

    }
    return wordCount;
}

int loadPassageWords(Word words[], char passage[],bool op1, bool op2){
    if(op1 == false){
        cout<< "You must load a dictionary! " << endl << endl;
        return 0;
    }
    if(op2 == false){
        cout<< "You must load a passage! " << endl << endl;
        return 0;
    }
    int a = getWords(passage, words);
    cout<< "The number of words read from the passage are : " << a << endl << endl;

return a;
}

int searchPassage(Word passagewords[],int numwords, Word w){


    int count=0, a;

    for(int i=0; i<numwords; i++){

        a = strcmp(passagewords[i].word, w.word);

        if(a == 0)
            count++;
}

return count;
}

void option4(Word dict[], int numwordsDict, Word passagewords[], char passage[], bool op1, bool op2){


    int a = loadPassageWords(passagewords,passage,op1,op2);

    int i=0, j=0, b, c,validwords=0, compare,d;



    while((i < numwordsDict) && (j < a )){

        b = strlen(dict[i].word);
        c = strlen(passagewords[j].word);

    if(b == c){

       compare =  strcmp(dict[i].word,passagewords[j].word);

        if(compare == 0){
        validwords = validwords + 1;
        d = searchPassage(passagewords,a,passagewords[j]);

        cout<< passagewords[j].word << "\t\t\t\t" << d << endl;

j++;
}
}
i++;

}

        cout<< endl << endl << "Number of valid words are : " << validwords << endl << endl;
}

int returnMenu(){
    char ch;
    int a;
    cout<<endl<<"Return to Menu (Y) : ";
    cin>>ch;
    cout<< endl;
    while(ch != 'Y'){
        cout<<endl<<"Return to Menu (Y) : ";
        cin>>ch;
        cout<< endl;
    }
    return printMenu();
}

int main(){
    Word words[1000], wordpassage[1000],w;
    char passage[1000],language[50],ch,cha;
    int a,b,c,d,x,y,z, j,k;
    bool op1 = false, op2 = false;

    a = printMenu();

    while(a != 5){

        if(a < 1 || a > 5)
        cout<< "Invalid choice!" << endl;

        if(a == 1){
            cout<< "Please enter E (English), F (French), S (Spanish) or M (Menu): ";
            cin>> cha;
            cout<< endl;

            while((cha != 'E') && (cha != 'S' ) && (cha != 'F')  && (cha!= 'M')){

                cout<< "Poor choice! Please enter an apropriate letter! " << endl;
                cin>> cha;
                cout<< endl;
            }
            b = option1(words,cha);

            if(b != -1){
                cout<< b << " words were succesfully read from the dictionary. " << endl << endl;
                a = returnMenu();
                op1 = true;
                continue;
            }
            else{
                a = returnMenu();
                continue;
            }
        }
        if(a == 2){
            cout<< "Please enter the name of file with passage or m (Menu): ";
            cin>> language;
            c = option2(passage, language);
            if(c == -1){
                a = returnMenu();
                continue;
            }
            else{
                op2 = true;
                a = returnMenu();
                continue;
            }
        }
        if(a == 3){
            option3(passage,language);
            a = returnMenu();
            continue;
        }
        if(a == 4){

            option4(words,b,wordpassage,passage,op1,op2);

            cout<< "=============================================================" << endl;
            cout<< "Valid Words                                        Frequency " << endl;





            cout<< "============================================================" << endl;
            a = returnMenu();
            continue;
        }
        a = printMenu();
    }

    if(a == 5)
        return 0;
}














