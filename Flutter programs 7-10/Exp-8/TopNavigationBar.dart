import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: Row(children: [
                Text('WOW Pizza',
                  style:TextStyle(fontSize: 20.0),),
                SizedBox(width:160.0,),
                Container(child:GestureDetector(
                  child:Image.asset(
                    'Images/twitter.png',
                    fit:BoxFit.contain,
                    height: 30,),
                ),),
                SizedBox(width:10.0,),
                Container(child:GestureDetector(
                  child:Image.asset(
                    'Images/facebook.png',
                    fit:BoxFit.contain,
                    height: 40,),
                ),),
              ],
              ),
              bottom: TabBar(indicatorColor: Colors.red,
                  tabs:[
                    Tab(icon: Container(height:40,
                        child: Image.asset('lib/icons/pizza.png')),
                        text:'Vegitable Pizza'
                    ),
                    Tab(icon: Container(height: 40,
                        child: Image.asset('lib/icons/pizza.png')),
                        text:'Cheese Pizza'
                    ),
                    Tab(icon: Container(height: 40,
                        child: Image.asset('lib/icons/french-fries.png')),
                        text:'Fries'
                    ),
                  ]
              )
          ),
          body:TabBarView(
            children: [
              MaterialApp(home:Center(child:Column(children:[
                Image.asset('Images/Vpizza.png',
                  width:400.0,
                  height:300.0,),
                Text("Hi, I'm Pizza Assistant, what can I help you order?",
                  style: TextStyle(decoration:TextDecoration.none,fontSize:30.0),
                  textAlign: TextAlign.center,
                ),
              ]
              )
              ),
              ),
              MaterialApp(home:Center(child:Column(children:[
                Image.asset('Images/cheesepizza.png',
                  width:400.0,
                  height:300.0,),
                Text("Hi, I'm Pizza Assistant, what can I help you order?",
                  style: TextStyle(decoration:TextDecoration.none,fontSize:30.0),
                  textAlign: TextAlign.center,
                ),
              ]
              )
              ),
              ),
              MaterialApp(home:Center(child:Column(children:[
                Image.asset('Images/Fpizza.png',
                  width:400.0,
                  height:300.0,),
                Text("Hi, I'm Pizza Assistant, what can I help you order?",
                  style: TextStyle(decoration:TextDecoration.none,fontSize:30.0),
                  textAlign: TextAlign.center,
                ),
              ]
              )
              ),
              ),
            ],
          ),
        ));
  }

}

