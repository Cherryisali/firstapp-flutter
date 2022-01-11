import 'package:firstapp/models/cadastro_models.dart';
import 'package:flutter/material.dart';
class cadastro extends StatefulWidget {
  const cadastro({ Key? key }) : super(key: key);

  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _telefoneInputController = TextEditingController();
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _confirmInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cadastrado(context),
    );
  }

_cadastrado(BuildContext context) {
    return Container(
      // Container(
      //   padding: EdgeInsets.all(4),
      //   child: SingleChildScrollView(
      //     child: Column(
      //DECORAÇÃO DO CONTAINER 
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 125),
      child: SingleChildScrollView(
      child: Container(
            height: 660,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                tituloprincipal(),
                Padding(padding: EdgeInsets.only( bottom: 15)),
                 slogan(),
                 Padding(padding: EdgeInsets.only( bottom: 40)),
                 _cadastronome(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                  _cadastrotelefone(),
                 Padding(padding: EdgeInsets.only( bottom: 20)),
                 _cadastroemail(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                 _cadastrosenha(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                 _confirmsenha(),
                 Padding(padding: EdgeInsets.only( bottom: 25)),
                 _botaocadastro(context),
                 //redirecionar para loginscreen; 
            ]
            )
      )
    )
    );
    
}

Text tituloprincipal() {
  return Text("Seja Bem Vindo à isAgenda!",
          textAlign: TextAlign.center, 
          style: TextStyle(
          color: Colors.black87, 
          fontSize:30, 
          fontWeight: FontWeight.bold ),
              );
}
Text slogan() {
  return Text("Seu novo conceito de Agenda Telefônica Virtual",
          textAlign: TextAlign.center, 
          style: TextStyle(
          color: Colors.black54, 
          fontSize:15, ),
              );
}
 Form _cadastronome() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _nameInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Nome Completo: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.person_sharp, 
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
   Form _cadastrotelefone() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _telefoneInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Número de Telefone: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.phone_android_rounded, 
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
Form _cadastroemail() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _mailInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Digite seu E-mail: ",
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
 Form _cadastrosenha() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _passwordInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Digite sua Senha: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.vpn_key_sharp, 
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

  Form _confirmsenha() {
   return Form(child: Column(
              children: [TextFormField(
                controller:_confirmInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Confirme sua Senha: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.vpn_key_sharp, 
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


 Row _botaocadastro(BuildContext context) {
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
                    " Cadastrar ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    _doSingUp(); 
                    Navigator.pop(context);
            
                  },
              ),
            ],
          ),
        ],
      );
 }
 void _doSingUp(){
   User newUser = User( 
   name: _nameInputController.text, 
   mail:_mailInputController.text, 
   telefone: int.parse(_telefoneInputController.text), 
   password: _passwordInputController.text);
   print(newUser);
   }
}