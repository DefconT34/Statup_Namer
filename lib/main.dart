import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{ 
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Im Defcon and Im back",
      theme: ThemeData( 
        primaryColor: Colors.yellow,
      ),
      /*home: Scaffold( 
        appBar: AppBar(
          title: Text('Im Defcon and Im back'),
        ),
        body: Center(
          child: Text('My name is Defcon, DefconT34'),
        ),
      )*/
      home: Home()
      ,debugShowCheckedModeBanner: false,
    );

  }
}

class Home extends StatefulWidget{
  State<StatefulWidget> createState(){ 
    return _Home();
  }
}

class _Home extends State<Home>{ 
  Widget build(BuildContext context){
    return  Scaffold(
      
      appBar: AppBar(

        centerTitle: true ,
        title: Text('Im Defcon and Im back'),
        leading: Icon(Icons.dashboard),
        /*actions: <Widget>[
          Icon(Icons.contacts)
        ],*/
        //elevation: 100, augmenter l'ombre de la barre de notif
        
      ),
      /*
      drawer: Drawer(
        child: Text('Test1'),
        
      )
      ,*/
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Defcon Fex title"),
              background: Image.asset(
                "res/images/material_design_3.png",
                fit: BoxFit.fill,
              ), 
            ),
          ),SliverFillRemaining(
            child: Center(
              child: Text("Hello Defcon"),
            ),
          )
        ],
      ),
      
        /*body: Container(
          color: Colors.white, 
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height ,
          child: Center(
            child: Text(
              "My name is Defcon, DefconT34 This is America !",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15 
              ),
              ), 
          )
          
        ),*/
    );
  }
}

/**/
