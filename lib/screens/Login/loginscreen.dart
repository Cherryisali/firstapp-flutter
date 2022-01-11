
import 'package:firstapp/screens/Login/cadastro.dart';
import 'package:firstapp/screens/Pagina%20Inicial/homescreen.dart';
import 'package:firstapp/screens/Recuperar%20Senhas/esqueceusenha.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



//MÉTODO PRINCIPAL (BODY)
class _LoginScreenState extends State<LoginScreen> {
   TextEditingController _mailInputController = TextEditingController();
   TextEditingController _passwordInputController = TextEditingController();
  bool continueConnected  = false; 
  Color topColor = Colors.grey;
  Color bottomColor = Color.fromARGB(229,228,226,255);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

_body(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
      child: Container(
       
      //DECORAÇÃO DO CONTAINER 
    
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              topColor,
              bottomColor,
            ]
            ),
      ),
      //FIM DECORAÇÃO DO CONTAINER s
      //COLUNA DENTRO DO CONTAINER 
          child: Container(
             
            alignment: Alignment.center,
            height: 615,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  _img(),
                  Padding(padding: EdgeInsets.only( bottom: 5)),
                  _titagenda(), 
                  _titlogin(),
                  _campoemail(),
                  _camposenha(),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              //esqueceu sua senha 
                  _botaoES(context),
                  _botaoentrar(context),
                  Padding(padding: EdgeInsets.only( bottom: 10)),
                   conta(), 
                   _cadastrar(context)
              
            
                   
            ] //children 
        ),
          )
      )

      )
        );
}

  //MÉTODOS ESPECÍFICOS 

Image _img() {
   return Image.asset("assets/icone03.png", 
          height: 110,
          );
 } 

  Text _titagenda() {
   return Text("Agenda Telefônica", 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87, 
            fontSize:24, 
            fontWeight: FontWeight.bold ),
            );
 }

 Text _titlogin() {
   return Text("Login",               
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87, 
            fontSize:20, 
            fontWeight: FontWeight.bold ),
            );
 }

  Form _campoemail() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _mailInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.mail_outline,
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

  Form _camposenha() {
   return Form(child: Column(
              children: [TextFormField(
                obscureText: true,
                controller: _passwordInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.password_sharp,
                  color: Colors.black),
                  border: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.white)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.grey)
                  ),
              )
               ,) 
               ],
               ) 
               );
 }

  Text _ES(BuildContext context) {
   return Text("Esqueceu sua senha?", 
               textAlign: TextAlign.right, 
            style: TextStyle(
            color: Colors.black87, 
            fontSize:10, 
            fontWeight: FontWeight.bold 
               )
               );
 }

 GestureDetector _botaoES(BuildContext context) {
   return GestureDetector(
                 onTap: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context) => esqueceusenha()))},
                 child: 
               _ES(context),

               );
 }
  Row _botaoentrar(BuildContext context) {
   return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  textColor: Colors.black87,
                  color: Color.fromRGBO(170,170,170,255),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                  child: Text(
                    " Entrar ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () { 
                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
          ),
        ],
          )
        ]);
 }
 



 Text conta() {
   return Text("Ainda não possui uma conta?", 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black87, 
          fontSize:13 ),
          );
        
 }

 Text cadastrar(BuildContext context) {
   return Text("Cadastre-se!", 
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black87, 
        fontSize:12 ),
        );
 }

  GestureDetector _cadastrar(BuildContext context) {
   return GestureDetector(
                 onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => cadastro()))},
               child: 
               cadastrar(context),
               );
 }
}
