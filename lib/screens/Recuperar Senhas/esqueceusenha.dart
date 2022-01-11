

import 'package:firstapp/screens/Recuperar%20Senhas/token.dart';
import 'package:flutter/material.dart';
class esqueceusenha extends StatefulWidget {
  const esqueceusenha({ Key? key }) : super(key: key);

  @override
  _esqueceusenhaState createState() => _esqueceusenhaState();
}

class _esqueceusenhaState extends State<esqueceusenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _esqueceusenha(context)
    );
  }
}
_esqueceusenha(BuildContext context){
  return Container(
     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
      child: Container(
            height: 500,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _tituloinicial(),
                Padding(padding: EdgeInsets.only( bottom: 20)),
                _emailtoken(),
                Padding(padding: EdgeInsets.only( bottom: 20)),
                _recuperarsenha(context)
                //redirecionar para token;
              ],
            ),
      ),

  );
}
_tituloinicial(){
  return Text("Esqueci minha senha!", 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87, 
            fontSize:24, 
            fontWeight: FontWeight.bold ),
            );
}
 Form _emailtoken() {
   return Form(child: Column(
              children: [TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "E-mail para recuperação de senha: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.mark_as_unread_sharp, 
                    color: Colors.black),
                  border: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.white)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.grey)
                  ),
                ), 
               )
               ],
               ) 
               );
 }

 Row _recuperarsenha(BuildContext context) {
   return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  textColor: Colors.black87,
                  color: Color.fromRGBO(170,170,170,170),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                  child: Text(
                    " Solicitar Código",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => token()));

                  }
              ),
            ],
          ),
        ],
      );
 }