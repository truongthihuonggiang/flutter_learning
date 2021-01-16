import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bài 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'flutter bài 1 - home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Container(
        constraints: BoxConstraints.expand(height:400),
        color:Colors.yellow,
        child: Stack(
          alignment: const Alignment(0.6 , 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/shoe.jpg'),
              radius: 100,
            ),
            Container(

              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
                'F one',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      )

    );
  }
}
