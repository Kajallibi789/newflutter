class x {
  final name;//obj property
  static const int i = 10; //class property
  x(this.name);
}
class A {
  late int q;
  late int w;

  A(this.q, this.w) {
    print(q);
  }
  void sowum(){
    print(q+w);
  }
}

class Y extends A{
  late double z;
  Y(int w , int q, this.z):super(w, q);
  void sowum(){
    super.sowum();
    print(z);
  }
}
class GetterSetter{
  late String geekname;
  String get getname{
    return geekname;
  }
  set setname(String geakname){
    geekname = geakname;
  }
}

class student{
  late String name;
  late String roll_no;
  late int mark1;
  late int mark2;
  student(this.name, this.roll_no, {this.mark1 = 60, this.mark2 = 70});
  //named constructor
  student.guest(){
    name='Guest';
    roll_no = '17';
    print(name + roll_no);
  }
  void cummulative_marks(){
    print(mark1 + mark2);
  }
}

void main(){

student student1 = student('kajal', 'Twenty', mark1: 20, mark2:30);
student student2 = student.guest();
student2.mark1 = 10;
student2.mark2 = 20;
student2.cummulative_marks();

student1.cummulative_marks();
x x1 =x('jack');
print(x1.name);
Y y = Y(1, 2, 3);
y.sowum();

}