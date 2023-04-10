import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.dart';


void main() {
  runApp(const MySignUp());
}

class MySignUp extends StatelessWidget {
  const MySignUp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _Register();
}

class _Register extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor:Color(0xFFFFFFFF),
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:SingleChildScrollView(


        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Padding(padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                child: Image(image: AssetImage("assets/imgs/photo3.jpg"),
                )
            ),
            const SizedBox(height: 20,)
            ,
            Container(
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                    top: 0, left: 20, right: 20, bottom: 0)
            ),

            const SizedBox(height: 20,),

            Buttona()
            ,

            const SizedBox(height: 20,)

            ,
            Text('Or, register with email...',
              style: TextStyle(
                  fontWeight: FontWeight.w300
              ),
            ),
            const SizedBox(height: 20,)
            ,
      Padding(
        padding:
        const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
            child:TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.supervised_user_circle),
                labelText: 'Email ID'
              ),
            )
      ),

            const SizedBox(height: 20,),
      Padding(
        padding:
        const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),

            child:TextField(
              controller: TextEditingController(),
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password'
              ),
            )
      ),
            const SizedBox(height: 20,),
      Padding(
        padding:
        const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
            child:TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_sharp),
                  labelText: 'Full name'
              ),
            )
      ),
            const SizedBox(height: 20,),
      Padding(
        padding:
        const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),

            child:TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.apartment_rounded),
                  labelText: 'Company name'
              ),
            )
      )



           ],
        ),
        )
      ),
    );
  }
}
