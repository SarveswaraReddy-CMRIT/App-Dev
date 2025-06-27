import 'package:flutter/material.dart';
import 'package:flutter_full_project/TopNavigationBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              title: Text("Welcome to WOW PIZZA!"),
              centerTitle: true,
              backgroundColor: Colors.deepOrange,
            ),
            body: Column(children:[
              Image.asset('Images/meal.jpg',
                width:400.0,
                height:300.0,),
              Text("Wanna Order Something... ",
                style: TextStyle(decoration:TextDecoration.none,fontSize:30.0),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () async => {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TopNavigationBar(),
                      ),
                          (route) => false)
                },
                child: Text('Lets Go'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              )
            ]
            )
        ));
  }
}