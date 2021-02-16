import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  Cuboid cuboid = new Cuboid(0,0,0);
  Cube cube = new Cube(0, 0, 0);

  cuboid.firstTask();
  cube.secondTask();

}

class Cuboid{
  int length;
  int width;
  int height;


  Cuboid(this.length, this.width, this.height);

  //Cuboid(this.length, this.width, this.height);

  void firstTask(){
    print('***** First Task *****');

    print("Please enter length of Cuboid:");
    var length = int.parse(stdin.readLineSync());
    print("Please enter windth of Cuboid:");
    var width = int.parse(stdin.readLineSync());
    print("Please enter height of Cuboid:");
    var height = int.parse(stdin.readLineSync());
    
    print("Surface Area: ${getSurfaceArea(length, width)}");
    print("Volume: ${getVolume(length, width, height)}");

  }

  int getSurfaceArea( int length, int width){
    return length* width;
  }

  int getVolume(int length, int width, int height){
    return length * width * height;
  }

  void volume(int length,int width, int height){
      print("Volume: ${length * height * width}");
  }
}

class Cube extends Cuboid{
  Cube(length, width, height): super(length,length,length);

  void secondTask(){
    print('***** Second Task *****');

    print('Please enter length of Cube: ');
    var length = int.parse(stdin.readLineSync());

    print('Surface Area of Cube: ${getSurfaceArea(length, length)}');
    print('Volume of Cube: ${getVolume(length, length, length)}' );
  }

  @override
  int getSurfaceArea(int length,int width){
    return pow(length, 2);
  }

  @override
  int getVolume(int length, int width , int height){
    return pow(length, 3);
  }

}
