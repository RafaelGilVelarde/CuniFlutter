import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

class MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color(0xff7f6fae),
        
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leadingWidth: 500,
        leading: const Image(
            image: AssetImage('Assets/Images/Logo_sin fondo.png'),
            alignment: Alignment.center,
            
        )
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the pa rent.
        child: Container(
          color: Color(0xff7f6fae),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image:AssetImage('Assets/Images/CUNI.png'),
                fit: BoxFit.scaleDown
                ),
              const Text("La mejor forma de aprender"),
              ElevatedButton(
                onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBaseMainPage(title: '',)),
                  );
                }, 
                child: Text("Empezar")),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyLoginPage(title: '',)),
                  );
                },
                child: Text("Ya tengo una cuenta, ingresar")),
            ],
          ),
          

        )
        
      ),
    );
  }
}
