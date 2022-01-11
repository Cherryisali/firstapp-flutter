import 'package:firstapp/database/database_helpder.dart';
import 'package:firstapp/screens/Pagina%20Inicial/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class novocontato extends StatefulWidget {
  const novocontato({ Key? key }) : super(key: key);

  @override
  _novocontatoState createState() => _novocontatoState();
}

class _novocontatoState extends State<novocontato> {
  final dbHelper = DBProvider.instance;
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _sobrenomeInputController = TextEditingController();
  TextEditingController _telefoneInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      _criarcontato(context));
      
  }
_criarcontato (BuildContext context){
  return Container( 
    child: SingleChildScrollView(
      child: Container(
    
     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
      child: Container(
            height: 500,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                _img(),
                Padding(padding: EdgeInsets.only( bottom: 05)),
                _frase(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                _nome(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                _sobrenome(),
                 Padding(padding: EdgeInsets.only( bottom: 10)),
                _numtelefone(),
                  Padding(padding: EdgeInsets.only( bottom: 20)),
                _botaosalvar(context)
                //redirecionar para homescreen;
              ]
            )
      )
      )
    )
    );
} 
 Image _img() {
   return Image.asset("assets/iconeperson.png", 
          height: 120,
          );
 } 
 
   Text _frase() {
   return Text("Crie um novo contato", 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87, 
            fontSize:20, 
            fontWeight: FontWeight.bold ),
            );
 }
Form _nome() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _nameInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Nome: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.contacts_sharp, 
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
 Form _sobrenome() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _sobrenomeInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Sobrenome: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.contacts_sharp,
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
   
   Form _numtelefone() {
   return Form(child: Column(
              children: [TextFormField(
                controller: _telefoneInputController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Telefone: ",
                  labelStyle: TextStyle(color: Colors.black87),
                prefixIcon: Icon (
                  Icons.phone,
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
Row _botaosalvar(BuildContext context) {
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
                    " Salvar ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    _criarnovocontato(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                     _onClickNewContact(context);
                  },
              ),
            ],
          ),
        ],
      );
 }

//  void _criarnovocontato (){
//    NovoContato newNovoContato = NovoContato(
//      name: _nameInputController.text, 
//      sobrenome: _sobrenomeInputController.text, 
//      telefone: int.parse(_telefoneInputController.text));
//      print(newNovoContato);
//      print(newNovoContato.name);
//      print(newNovoContato.sobrenome);
//      print(newNovoContato.telefone);
//  }


void _criarnovocontato(context) async {

    Map<String, dynamic> row = {
      DBProvider.columnNome : _nameInputController.text, 
      DBProvider.columnSobrenome: _sobrenomeInputController.text, 
      DBProvider.columnTelefone: _telefoneInputController.text
    };
  
    int? id = await dbHelper.insert(row);
    
   
  }

void _onClickNewContact(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content:  Text('Contato criado!',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey,
        action: SnackBarAction(label: 'OK', 
        textColor: Colors.black87,
        onPressed: scaffold.hideCurrentSnackBar))
    );
 }
}




  // void _atualizar() async {
  //   // linha para atualizar
  //   Map<String, dynamic> row = {
  //     DBProvider.columnId  : 1,
  //     DBProvider.columnNome  : _nameInputController,
  //     DBProvider.columnSobrenome  : _sobrenomeInputController,
  //     DBProvider.columnTelefone:  _telefoneInputController
  //   };
  //   final linhasAfetadas = await dbHelper.update(row);
  //   print('atualizadas $linhasAfetadas linha(s)');
  // }
  // void _deletar() async {
  //   // Assumindo que o numero de linhas é o id para a última linha
  //   final id = await dbHelper.queryRowCount();
  //   final linhaDeletada = await dbHelper.delete(id!);
  //   print('Deletada(s) $linhaDeletada linha(s): linha $id');
  // }



//ALERTA COM DIALOG 
//  _onClickNewContact (BuildContext context){
//    showDialog(context: context, builder:  (context) {
//      return AlertDialog(
//        title: Text("Contato criado!"),
//      );
//    });

//ALERTA COM TOAST 
//    _onClickNewContact (BuildContext context) {
//       Fluttertoast.showToast(
//         msg: "Contato adicionado!",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 3,
//         backgroundColor: Colors.black12,
//         textColor: Colors.white,
//         fontSize: 15
//     );
//    }
//  }
