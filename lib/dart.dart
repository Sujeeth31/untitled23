import 'dart:math';

import 'package:flutter/material.dart';

class calci extends StatefulWidget {
  const calci({super.key});

  @override

  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  final ctrl=TextEditingController();
  String num1="";
  String num2="";


  String oper="";
  bool clk=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          TextFormField(controller: ctrl,
            textAlign: TextAlign.end,style: TextStyle(color: Colors.pink,fontSize: 30),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  ctrl.clear();
                },
                    child:Text('clr')),
                ElevatedButton(onPressed: (){

                  ctrl.text = "%";
                  oper = "%";
                  clk =true;



                }, child: Text("%")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    ctrl.text=ctrl.text.substring(0,ctrl.text.length-1);
                  });
                }, child:Text('c')),
                ElevatedButton(onPressed: (){}, child:Text('/')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "7";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "7";
                    ctrl.text = num1;
                  }
                },
                  child: Text("7"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "8";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "8";
                    ctrl.text = num1;
                  }
                },
                  child: Text("8"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "9";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "9";
                    ctrl.text = num1;
                  }
                },
                  child: Text("9"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: (){

                  ctrl.text = "*";
                  oper = "*";
                  clk =true;



                }, child: Text("*")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "4";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "4";
                    ctrl.text = num1;
                  }
                },
                  child: Text("4"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "5";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "5";
                    ctrl.text = num1;
                  }
                },
                  child: Text("5"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "6";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "6";
                    ctrl.text = num1;
                  }
                },
                  child: Text("6"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: (){

                  ctrl.text = "-";
                  oper = "-";
                  clk =true;



                }, child: Text("-")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "1";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "1";
                    ctrl.text = num1;
                  }
                },
                  child: Text("1"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "2";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "2";
                    ctrl.text = num1;
                  }
                },
                  child: Text("2"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "3";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "3";
                    ctrl.text = num1;
                  }
                },
                  child: Text("3"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: (){

                  ctrl.text = "+";
                  oper = "+";
                  clk =true;



                }, child: Text("+")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()
                {
                  ctrl.text = "^";
                  oper = "^";
                  clk =true;

                },
                  child: Text("^"),),
                ElevatedButton(onPressed: ()
                {
                  if(clk)
                  {
                    num2+= "0";
                    ctrl.text = num2;
                  }
                  else
                  {
                    num1+= "0";
                    ctrl.text = num1;
                  }
                },
                  child: Text("0"),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),
                ElevatedButton(onPressed: ()
                {
                  ctrl.text = "√ ";
                  oper = "√ ";
                  clk =true;

                },
                  child: Text("√ "),),
                ElevatedButton(onPressed: (){

                  if(oper=="+")
                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res =a+b;

                    ctrl.text = res.toString();
                  }
                  if(oper=="-")
                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res =a-b;
                    ctrl.text = res.toString();
                  }
                  if(oper=='*'){
                    int a = int.parse(num1);
                    int b = int.parse(num2);
                    int res =a*b;
                    ctrl.text = res.toString();
                  }
                  if(oper=='/'){
                    int a = int.parse(num1);
                    int b = int.parse(num2);
                    double res =a/b;
                    ctrl.text = res.toString();
                  }
                  if(oper=='%'){
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res =a*b/100;
                    ctrl.text = res.toString();
                  }
                  if(oper=='^'){
                    double a =double.parse(num1);
                    double b =double.parse(num2);
                    num res = pow(a,b);
                    ctrl.text = res.toString();
                  }
                  if(oper=='√ '){
                    double a =double.parse(num2);
                    double res=sqrt(a) ;
                    ctrl.text = res.toString();
                  }



                },
                    child: Text("=")),
              ],
            ),
          ),
          ElevatedButton(onPressed: ()
          {
            if(clk)
            {
              num2+= ".";
              ctrl.text = num2;
            }
            else
            {
              num1+= ".";
              ctrl.text = num1;
            }
          },
            child: Text("."),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),),

        ],
      ),

    );
  }
}
