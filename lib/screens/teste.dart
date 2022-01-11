


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TesteImagem extends StatefulWidget {
  const TesteImagem({ Key? key }) : super(key: key);

  @override
  _TesteImagemState createState() => _TesteImagemState();
}

class _TesteImagemState extends State<TesteImagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
         decoration:  BoxDecoration(
    image:  DecorationImage(
      image:  AssetImage('fototeste.jpg'),
      fit: BoxFit.cover,
    )
         )
        // child:  Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Image.asset("assets/fototeste.jpg")
        //   ]
        // )
      )
    );
  }
}