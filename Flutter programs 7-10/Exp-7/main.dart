import 'dart:io';
import 'dart:math' as math;
void main()
{
  print("pizza price ,small: 150 Rs, Medium: 190 Rs, Large: 240 Rs");
  print("please enter your pizza size (Small, Medium, Large):");
  String pizzaSize=stdin.readLineSync()!;
  print("How Many pizza do you want to $pizzaSize");
  int pizzaQty=int.parse(stdin.readLineSync()!);
  //condition
  if(pizzaSize=='Small')
    {
      var result=pizzaQty*150;
      print("Your Total Payment is :$result");
    }
  else if(pizzaSize=='Medium')
    {
      var result=pizzaQty*190;
      print("Your Total Payment is:$result");
    }
  else if(pizzaSize=='Large')
    {
      var result=pizzaQty*240;
      print("Your Total Payment is:$result");
    }
  else
    {
      print("Invalid Pizza Size Input");

    }
}


