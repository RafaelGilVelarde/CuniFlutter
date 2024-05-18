import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

class MyLoginPageState extends State<MyLoginPage> {

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
        backgroundColor: Colors.deepPurple[300],
        
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leadingWidth: 500,
        leading: const Image(
            image: AssetImage('Assets/Images/Logo_sin fondo.png'),
            alignment: Alignment.center,
            
        )
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Email"),
            TextFormField(),
            const Text("Contraseña"),
            TextFormField(),
            TextButton(
              onPressed: (){},
              child: Text("¿Olvidaste tu contraseña?")),
          ],
        ),
      ),
    );
  }
}
