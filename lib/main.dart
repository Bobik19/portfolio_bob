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


class Desktopbody extends StatefulWidget {
  @override
  _DesktopbodyState createState() => _DesktopbodyState();
}

class _DesktopbodyState extends State<Desktopbody> {
  Widget body;
  @override
  void initState() {
    body = Aboutmobile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row (children: <Widget>[
        Expanded(
          flex: 6,
        child: body,
    ),
    Expanded(
        child: Container(
         color: Colors.blue, 
         child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
       FlatButton(child: Text("Обо мне", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: ()  {setState(() {
        body=About(); 
       }); },),
       FlatButton(child: Text("Работы", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: ()   { setState(() {
        body=Works(); 
       });},),
       FlatButton(child: Text("Контакты", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: () { setState(() {
        body=Contact(); 
       });},),
        ],
        ),
      ),
    ),
      ],
      ),  
    );
  }
}
class Contact extends StatelessWidget {
  const Contact({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.lightBlue,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
   Text("Contacts")
 ],
       
     ),

    );
}
}

class Works extends StatelessWidget {
  const Works({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.lightBlue,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text ("Works"),
],
     ), );
}
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.lightBlue, 
     child:  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text("Иван Бобко", style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
     
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
      );
  }
}


class Mobilebody extends StatefulWidget {
  @override
  _MobilebodyState createState() => _MobilebodyState();
}

class _MobilebodyState extends State<Mobilebody> {
  Widget body;
  @override
  void initState() {
    body = Aboutmobile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column (children: <Widget>[
        Expanded(
          flex: 13,
        child: body,
    ),
    Expanded(
        child: Container(
         color: Colors.blue, 
         child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[ 
       FlatButton(child: Text("Обо мне", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: () { setState(() {
        body=Aboutmobile();
       }); },),
       FlatButton(child: Text("Работы", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: () {setState(() {
        body=Worksmob(); 
       });},),
       FlatButton(child: Text("Контакты", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),), onPressed: () {setState(() {
        body=Contactmob(); 
       });},),
        ],
        ),
      ),
    ),
      ],
      ),
      );
  }
}

class Worksmob extends StatelessWidget {
  const Worksmob({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.lightBlue,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text ("Works"),
],
     ), );
}
}
class Contactmob extends StatelessWidget {
  const Contactmob({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.lightBlue,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text ("Contacts"),
],
     ), );
}
}

class Aboutmobile extends StatelessWidget {
  const Aboutmobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
}
