#include <iostream>
#include <fstream>
using namespace std;


struct Students {

    int id;
    string fname;
    string lname;
    char gender;
    string email;
    string number;
    string date;

};

struct Courses {


    string course;
    string name;
    int credits;

};

struct Gradesheet{


    int id;
    string course;
    string grade;


};

void printStudents(Students s){


cout<< s.id << "\t" << s.fname << "\t" << s.lname << "\t" << s.gender << "\t" << s.email << "\t" << s.number << "\t" << s.date << endl;

}

void printCourses(Courses c){

    cout<< c.course << "\t" << c.name << "\t" << c.credits << endl;

}

void printGradesheet (Gradesheet g){

    cout<< g.id << "\t" << g.course << "\t" << g.grade << endl;

}

void printallStudents(Students s[], int numElements){

    for(int i=0; i<numElements; i++)
        printStudents(s[i]);


    cout<< endl;


}

void printallCourses(Courses c[], int numElements){

    for(int i=0; i<numElements; i++)
        printCourses(c[i]);

    cout<< endl;
}

void printallGradesheets(Gradesheet g[], int numElements){

    for(int i=0; i<numElements; i++)
        printGradesheet(g[i]);

    cout<< endl;
}

int loadStudents(Students students[]) {

    ifstream in;
    int id;
    int numElements;
    Students s;

    in.open ("students.txt");

    if (!in.is_open()) {
        cout << "Input file, students.txt, could not be opened for reading." << endl;
        cout << "Aborting program ..." << endl;
        return -1;
    }

    in >> id;

	numElements = 0;

    while (id != 0) {
        s.id = id;
        in >> s.fname >> s.lname >> s.gender >> s.email >> s.number >> s.date;

        students[numElements] = s;
        numElements = numElements + 1;

        in >> id;
    }

    in.close();

	return numElements;
}

int loadCourses (Courses courses[]) {

    ifstream in;
    string course;
    int numElements;
    Courses c;

    in.open ("courses.txt");

    if (!in.is_open()) {
        cout << "Input file, courses.txt, could not be opened for reading." << endl;
        cout << "Aborting program ..." << endl;
        return -1;
    }

    in >> course;

	numElements = 0;

    while (course != "END") {
        c.course = course;
        in >> c.name >> c.credits;

        courses[numElements] = c;
        numElements = numElements + 1;

        in >> course;
    }

    in.close();

	return numElements;
}

int loadGradesheet (Gradesheet gradesheet[]) {

    ifstream in;
    int id;
    int numElements;
    Gradesheet g;

    in.open ("gradesheet.txt");

    if (!in.is_open()) {
        cout << "Input file, gradesheet.txt, could not be opened for reading." << endl;
        cout << "Aborting program ..." << endl;
        return -1;
    }

    in >> id;

	numElements = 0;

    while (id != 0) {
        g.id = id;
        in >> g.course >> g.grade;

        gradesheet[numElements] = g;
        numElements = numElements + 1;

        in >> id;
    }

    in.close();

	return numElements;
}

int searchCourse (Courses courses[], int numElements, string course) {

	int j = 0;

	while (j < numElements) {
        if(courses[j].course == course)
           return j;
        j = j + 1;
    }

    return -1;
}

int searchGrade (Gradesheet grades[], int numElements, string grade) {

	int j = 0;

	while (j < numElements) {
        if(grades[j].grade == grade)
           return j;
        j = j + 1;
    }

    return -1;
}

void option1(Courses courses[], int numElements, string course){


    int a = searchCourse(courses, numElements, course);


    if(a == -1){
        cout<< "Please enter a valid Course Code!" << endl;
        int a = searchCourse(courses, numElements, course);
    }


    else{
        cout<< "Course Code : " << courses[a].course << endl;
        cout<< "Course Name : " << courses[a].name << endl;
        cout<< "Number of Credits : " << courses[a].credits << endl << endl;
    }
}

void option2(Gradesheet grades[], int numEntries, string course){

    int j=0;

    for(int i=0; i<numEntries; i++){
        if(grades[i].course == course){
            cout<< grades[i].id << "\t" << grades[i].grade << endl << endl;
            j = j + 1;
    }
    }

    if(j == 0)
        cout<< course << " is an invalid course code! " << endl  << endl;

}

int searchStudent(Students students[], int numStudents, int id){

    for(int i=0; i< numStudents; i++){
        if(students[i].id == id)
            return i;
    }
return -1;
}

void option3(Students students[], int numStudents, Gradesheet grades[], int numEntries, int id){

    int a = searchStudent(students,numStudents,id);
    int j=0;

    if(a == -1){
        cout<< "Please enter a valid ID Number!" <<endl;
    }

    else{

        for(int i=0; i< numEntries; i++){
            if( grades[i].id == id){
                cout<< grades[i].course << "\t" << grades[i].grade << endl;
                j = j + 1;
            }
        }
        if(j == 0)
            cout<< "The student is not enrolled for any courses." << endl;

}
}

double getQualityPoints(string grade){

    double a;

    if(grade == "A+")
        a = 4.3;

    if(grade == "A")
        a = 4.0;

    if(grade == "A-")
        a = 3.7;

    if(grade == "B+")
        a = 3.3;

    if(grade == "B")
        a = 3.0;

    if(grade == "B-")
        a = 2.7;

    if(grade == "C+")
        a = 2.3;

    if(grade == "C")
        a = 2.0;

    if(grade == "F1")
        a = 1.7;

    if(grade == "F2")
        a = 1.3;

    if(grade == "F3")
        a = 0.0;

return a;
}

double calculateGPA(Gradesheet grades[], int numEntries, int id, Courses courses[], int numCourses){


double sumGradepts=0.0, sumCreditHrs=0.0;
int i=0,j;

for(i=0; i<numEntries; i++){

    if(grades[i].id == id){

        j = searchCourse(courses,numCourses,grades[i].course);
        sumCreditHrs = sumCreditHrs + courses[j].credits;
        sumGradepts = sumGradepts + (courses[j].credits * getQualityPoints(grades[i].grade));
      }
}

return sumGradepts/sumCreditHrs;

}

void option4(Students students[], int numStudents, Gradesheet grades[], int numGrades, int id, Courses courses[], int numcourses){


double gpa = calculateGPA(grades,numGrades,id,courses,numcourses);
int count = 0;


    for(int i=0; i<numStudents; i++){

        if(students[i].id == id){

            cout<< "Student name : " << students[i].fname << " " << students[i].lname << endl;
            cout<< "Gender : " << students[i].gender << endl;
            cout<< "Telephone Number : " << students[i].number << endl;
            cout<< "E-mail Address : " << students[i].email << endl;
            cout<< "Student ID : " << students[i].id << endl;
            cout<< "Date of entry : " << students[i].date << endl;
            cout<< students[i].fname << " " << students[i].lname << " has a GPA of " << gpa << endl;
            count++;
        }

}

    if(count == 0)
        cout<< "This student is not enrolled at the University." << endl;

}

int printMenu(){

int num;

cout<< endl << endl;
cout<< "*************** MENU INFORMATION ******************" << endl << endl << endl;

cout<< "1. Course Information" << endl;
cout<< "2. Course Summary Grade Sheet" << endl;
cout<< "3. Student Grade Report" << endl;
cout<< "4. Student Information" << endl;
cout<< "5. Exit" << endl << endl;

cin>> num;


return num;

}

int main(){



    ifstream fin;
    ifstream gin;
    ifstream hin;
    Students students[100];
    Courses courses[1000];
    Gradesheet gradesheet[10000];
    string code, code1;
    int idnum, idnum1;

    fin.open("students.txt");
    gin.open("courses.txt");
    hin.open("gradesheet.txt");


    int a = loadStudents(students);
    int b = loadCourses(courses);
    int c = loadGradesheet(gradesheet);


    int num = printMenu();

    while(num != 5){

        if(num < 1 || num > 5){
        cout<< "Invalid choice!" << endl;
    }

    if(num == 1){
        cout<< "Please enter a course code : ";
        cin>> code;
        cout<< endl << endl;
        option1(courses,b,code);
        cout<< endl << endl;
        cout<< "***************************************************" << endl << endl;
    }

    if(num == 2){

        cout<< "Please enter a course code : ";
        cin>> code1;
        cout<< endl << endl;
        option2(gradesheet,c,code1);
        cout<< endl << endl;
        cout<< "***************************************************" << endl << endl;
        }

    if(num == 3){

        cout<< "Please enter a student ID : ";
        cin>> idnum;
        cout<< endl << endl;
        option3(students,a,gradesheet,c,idnum);
        cout<< endl << endl;
        cout<< "***************************************************" << endl << endl;
    }

    if(num == 4){

        cout<< "Please enter a student ID : ";
        cin>> idnum1;
        cout<< endl << endl;
        option4(students,a,gradesheet,c,idnum1,courses,b);
        cout<< endl << endl;
        cout<< "***************************************************" << endl << endl;
    }

        num = printMenu();
}


fin.close();
gin.close();
hin.close();



    if(num == 5)
return 0;
}


























































































