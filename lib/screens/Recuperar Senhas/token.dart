
import 'package:firstapp/screens/Recuperar%20Senhas/novasenha.dart';
import 'package:flutter/material.dart';
class token extends StatefulWidget {
  const token({ Key? key }) : super(key: key);

  @override
  _tokenState createState() => _tokenState();
}

class _tokenState extends State<token> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _token(context),

    );
  }
}

_token(BuildContext context){
  return Container(
     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
      child: Container(
            height: 500,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Insira o código recebido: ",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.black87, 
                fontSize:24, 
                fontWeight: FontWeight.bold ),
                ),
                _confirmartoken(),
                Padding(padding: EdgeInsets.only( bottom: 15)),
                _confirmar(context)
                //redirecionar para novasenha;
                    ],
            ),
      ),

  );
}
 Form _confirmartoken() {
   return Form(child: Column(
              children: [TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Código:  ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.password,
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
 Row _confirmar(BuildContext context) {
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
                    " Confirmar ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => novasenha()));
                  },
              ),
            ],
          ),
        ],
      );
 }

 