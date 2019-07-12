import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 500) return Desktopbody();
        return Mobilebody();
      },
      )
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Hi")],
      ),
    );
  }
}

class Desktopbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row (children: <Widget>[
        Expanded(
          flex: 10,
        child: Container(
         color: Colors.lightBlue, 
         child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Иван Бобко", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            child: CircleAvatar(
                radius:125,
              backgroundImage: NetworkImage ("http://dlyakota.ru/uploads/posts/2017-11/dlyakota.ru_fotoprikoly-s-kotami_nedovolnye-koty-17-foto_1.jpeg")
            ),
          ),
          Text("Приветствую на моем сайте. Меня зовут Иван Бобко.", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
         ],
         ),
      ),
    ),
    Expanded(
        child: Container(
         color: Colors.blue, 
         child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Text("Обо мне", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        Text("Работы", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        Text("Контакты", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        ],
        ),
      ),
    ),
      ],
      ),  
    );
  }
}
class Mobilebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column (children: <Widget>[
        Expanded(
          flex: 15,
        child: Container(
          width: double.maxFinite,
         color: Colors.lightBlue, 
         child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Иван Бобко", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0),
            child: CircleAvatar(
                radius:125,
              backgroundImage: NetworkImage ("http://dlyakota.ru/uploads/posts/2017-11/dlyakota.ru_fotoprikoly-s-kotami_nedovolnye-koty-17-foto_1.jpeg")
            ),
          ),
          Text("Приветствую на моем сайте. Меня зовут Иван Бобко.", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
         ],
         ),
      ),
    ),
    Expanded(
        child: Container(
         color: Colors.blue, 
         child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Text("Обо мне", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        Text("Работы", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        Text("Контакты", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w800),),
        ],
        ),
      ),
    ),
      ],
      ),
      );
  }
}
