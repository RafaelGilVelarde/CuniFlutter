import 'package:cuni/main.dart';
import 'package:flutter/material.dart';


class MainPageButtons extends StatelessWidget{
  final String _tipo;
  final String _uni;
  final String _examen;
  final MaterialPageRoute _route;
  const MainPageButtons(this._tipo,this._uni,this._examen, this._route, {super.key});


  @override
  Widget build(BuildContext context) {
     return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                  Navigator.push(
                  context,
                  _route,
                );
              }, 
              child: Column(
                children: <Widget>[
                  Text(_tipo),
                  Text(_uni),
                  Text(_examen),
                ],)              
              )
              ],
        );
  }
}

