

import 'package:firstapp/screens/Login/loginscreen.dart';
import 'package:flutter/material.dart';

class novasenha extends StatefulWidget {
  const novasenha({ Key? key }) : super(key: key);

  @override
  _novasenhaState createState() => _novasenhaState();
}

class _novasenhaState extends State<novasenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _senhaalterada(context),
      
    );
  }
}

_senhaalterada(BuildContext context){
  return Container(
     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
      child: Container(
            height: 515,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _novasenha(),
                Padding(padding: EdgeInsets.only( bottom: 20)),
                _digitesenha(),
                Padding(padding: EdgeInsets.only( bottom: 20)),
                _repitasenha(),
                Padding(padding: EdgeInsets.only( bottom: 20)),
                _alterada(context)
                //redirecionar para loginscreen;
              ],
            ),
      ),
  );
}
_novasenha (){
  return Text("Nova Senha",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.black87, 
            fontSize:24, 
            fontWeight: FontWeight.bold ),
            );
  
}

 Form _digitesenha() {
   return Form(child: Column(
              children: [TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Nova Senha: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.password_sharp,
                  color: Colors.black),
                  border: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.white)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.grey)
                  ), ) 
                  
              )
               ],
               ) 
               );
 }
  Form _repitasenha() {
   return Form(child: Column(
              children: [TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Repita a Senha: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.password_sharp,
                  color: Colors.black),
                  border: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.white)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.grey)
                  ), ) 
              )
               ],
               ) 
               );
 }


 Row _alterada(BuildContext context) {
   return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  textColor: Colors.black87,
                  color: Color.fromRGBO(255,255,255,255),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                  child: Text(
                    " Alterar Senha ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
              ),
            ],
          ),
        ],
      );
 }