import 'package:cuni/Buttons/MainPageButtons.dart';
import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

class MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    List<Widget> buttons=[];
    for(int i=0;i<5;i++){
      buttons.add(
        MainPageButtons(
          "Simulacro", 
          "ULima",
          "Inserta examen aca",
          MaterialPageRoute(builder: (context) => const MyLoginPage(title: '',)),
          )
      );
      buttons.add(
        const SizedBox(height: 10)        
      );
    }

    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff7f6fae),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: buttons
          ),
        )
      ),
    );
  }
}
