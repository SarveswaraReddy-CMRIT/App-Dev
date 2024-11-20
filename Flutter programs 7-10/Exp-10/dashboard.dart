import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              title: Text("CMR INSTITUTE OF TECHNOLOGY"),
              centerTitle: true,
              backgroundColor: Colors.deepOrange,
            ),
            body: Center(
              child: Image(
                image: NetworkImage('https://i0.wp.com/cmrithyderabad.edu.in/wp-content/uploads/2021/09/cropped-CMR-IT-logo-1.webp?w=731&ssl=1'),
              ),
            )
        ));
  }
}
