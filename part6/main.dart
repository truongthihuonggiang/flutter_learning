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
  final List<String> entries = <String>['A','B','C','D','E','F'];
  final List<int> colorCodes = <int>[600, 500, 400,300,100,100];
  double itemWidth = 40;
  double itemHeight = 50;
  var grid2 = GridView.builder(
    itemCount: 6,
    padding: const EdgeInsets.all(5),
    itemBuilder: (context, index) => 
        Container(
        color: Colors.amber[colorCodes[index]],
        width: itemWidth,
      height: itemHeight,
      alignment: Alignment.center,
        child: Text('Entry ${entries[index]}'),
      transform: Matrix4.rotationZ(-0.1),
    )
    ,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: (itemWidth / itemHeight),
    //  childAspectRatio: 1,
    ),
  );

var grid1 = GridView.count(
  crossAxisCount: 2,
  padding: const EdgeInsets.all(20),
  mainAxisSpacing: 10,
  crossAxisSpacing: 10,
  // Generate 100 widgets that display their index in the List.
  children: List.generate(6, (index) {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        Container(
          child: Image.asset("assets/images/shoe.jpg"),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text( 'Entry ${entries[index]}', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }),
);

  var grid3 = GridView.extent(
    // Create a grid with 2 columns. If you change the scrollDirection to
    // horizontal, this produces 2 rows.
    maxCrossAxisExtent: 70,
    padding: const EdgeInsets.all(20),
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    // Generate 100 widgets that display their index in the List.
    children: List.generate(6, (index) {
      return Stack(
        alignment: const Alignment(0.6, 0.6),

        children: [
          Container(
            child: Image.asset("assets/images/shoe.jpg"),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Entry ${entries[index]}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

        ],
      );
    }),
  );


    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Container(
        constraints: BoxConstraints.expand(height:400),
        color:Colors.yellow,
        child: grid1,
      )

    );
  }
}
