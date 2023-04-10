import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lab10/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
            const SizedBox(height: 40,),
            Padding(padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
            child: Image(image: AssetImage("assets/imgs/photo2.png"),
            ),
            ),

        const SizedBox(height: 20,),
            Container(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                    top: 0, left: 20, right: 20, bottom: 0)),
            const SizedBox(height: 20,),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.supervised_user_circle)),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffix: TextButton(
                          onPressed: () {}, child: Text('Forgot?')))),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 370,
              height: 50,
              margin: const EdgeInsets.only(top: 25, bottom: 25),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text('Or, login with...',
            style: TextStyle(
              fontWeight: FontWeight.w300
            ),),

            const SizedBox(height: 20,),
            Buttona(),
            const SizedBox(height: 20,)
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New to iThickLogistics?'),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MySignUp()),
                  );
                }, child: Text('Register'))
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}



class Buttona extends StatelessWidget{


  Buttona({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.only(right: 10),
          child: OutlinedButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('assets/imgs/icons8-apple-logo-48.png'),
                height: 25,
              ),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))))),
      Container(
          child: OutlinedButton(
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/imgs/icons8-facebook-48.png'),
              height: 25,
            ),
            style: OutlinedButton.styleFrom(
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          )),
      Container(
          margin: const EdgeInsets.only(left: 10),
          child: OutlinedButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('assets/imgs/icons8-gmail-48.png'),
                height: 25,
              ),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))))),
    ]);
  }

}
Widget outlinebuttons() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Container(
        margin: const EdgeInsets.only(right: 10),
        child: OutlinedButton(
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/imgs/icons8-apple-logo-48.png'),
              height: 25,
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))))),
    Container(
        child: OutlinedButton(
      onPressed: () {},
      child: Image(
        image: AssetImage('assets/imgs/icons8-facebook-48.png'),
        height: 25,
      ),
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    )),
    Container(
        margin: const EdgeInsets.only(left: 10),
        child: OutlinedButton(
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/imgs/icons8-gmail-48.png'),
              height: 25,
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))))),
  ]);
}
