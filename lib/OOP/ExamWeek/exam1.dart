abstract class Role{
  void displayRole();
}
class Person implements Role{
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);

  String get getName=>name;
  int get getAge=>age;
  String get getAddress=>address;

  @override
  void displayRole() {

  }
}
class Student extends Person{
  int studentID;
  String grade;
  List<double>courseScores=[];


   // Student(super.name, super.age,super.address,this.studentID, this.grade, this.courseScores);
 Student(String name, int age, String address,this.studentID,this.grade):super(name,age,address);

 @override
  void displayRole() {
    print(' ');
    print('Student Information:-');
    print('Role:Student');
    super.displayRole();
    print('Name :$name');
    print('Age :$age');
    print('Address : $address');
    print('Average Score:${avgScore().toStringAsFixed(2)}');
    print(' ');
 }

double avgScore(){
  if(courseScores.isEmpty){
    return 0.0;
  }
    double sum=0;
    for(double score in courseScores){
      sum+=score;
    }
    return sum.toDouble()/courseScores.length;
  }

}

class Teacher extends Person{
  int teacherId;
  List<String>courseTaught=[];

  // Teacher(super.name,super.age,super.address, this.teacherId,this.courseTaught);
Teacher(String name,int age,String address,this.teacherId):super(name,age,address);
  @override
  void displayRole() {
    print(' ');
    print('Teacher Information');
    print('Role:Teacher');
    super.displayRole();
    print('Name:$name');
    print('Age : $age');
    print('Address:$address');
    displayCourseTaught();

  }

void displayCourseTaught(){
    if(courseTaught.isEmpty){
      print('Empty');
    }else{
      print('Course Taught:-');
      for(String course in courseTaught){
        print('---$course');
      }
    }
}
}

void main(){
  Student obj =  Student('Robiul Hassan', 24, 'Mirpur-2, Dhaka', 121, 'A');
  obj.courseScores=[90,80,89];
  obj.displayRole();


  Teacher obj2 = Teacher('Robin', 32, 'Faridpur', 001);
  obj2.courseTaught=['Bangla', 'English','Math'];
  obj2.displayRole();
}