import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

class MyLoginPageState extends State<MyLoginPage> {

  @override
  Widget build(BuildContext context) {

    bool? isChecked = false;
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
      body: Form(
        child: Container(
          color: Color(0xff7f6fae),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff0e9c0),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Email"),
                TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),                    
                  ),),
                const Text("Contraseña"),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),                                        
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text("¿Olvidaste tu contraseña?")),
                StatefulBuilder(builder: (context, builderSetState) => 
                  CheckboxListTile(
                      title: const Text("He leído y acepto los términos y condiciones"),
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        builderSetState(() {
                          isChecked = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    )       
                ,),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Ingresar")
                ),
              ],
            ),
          )

        )
      ),
    );
  }
}
