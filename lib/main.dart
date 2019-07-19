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
    body = About();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row (children: <Widget>[
        Expanded(
          flex: 5,
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
       mainAxisAlignment: MainAxisAlignment.start,
 children: <Widget>[
   Text ("Контакты", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800),),
   Text("*Скоро*"),
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
       mainAxisAlignment: MainAxisAlignment.start,
children: <Widget>[
 Text ("Работы", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800),),
  Text("*Скоро*")
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
          backgroundImage: NetworkImage ("https://pp.userapi.com/c856120/v856120012/986ee/bZK5ekEOLp0.jpg")
        ),
      ),
      Text("Приветствую на моем сайте. Меня зовут Иван Бобко. Со мной можно связаться по почте Funny.man123@yandex.ru", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
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
      child: Row (mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[ Column (
       crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
  Text ("Работы", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800),),
Text ("*СКОРО*", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w800),),
],     
     ), 
     ],
     )
    
     );
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
     child: Row (mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[ Column (
       crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
  Text ("Контакты", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800),),
Text ("*СКОРО*", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w800),),
],     
     ), 
     ],
     )
    
     );
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
          backgroundImage: NetworkImage ("https://pp.userapi.com/c856120/v856120012/986ee/bZK5ekEOLp0.jpg")
        ),
      ),
      Text("Приветствую на моем сайте. Меня зовут Иван Бобко.  Со мной можно связаться по почте Funny.man123@yandex.ru", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
     ],
     ),
      );
  }
}
