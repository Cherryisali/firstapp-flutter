import 'package:firstapp/screens/Pagina%20Inicial/novocontato.dart';
import 'package:firstapp/database/database_helpder.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<Map<String, dynamic>>  listaContato = [];
     final dbHelper = DBProvider.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _consultar();
  }

  @override
  Widget build(BuildContext context) {
   
    //Scaffold é a iterface de tela padrão;
    return Scaffold(
        //AppBar é a parte de cima da aplicação;
        body: _listContacts(context),
        appBar: AppBar(
          title: const Text('Lista de Contatos'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => novocontato()),
              );
              setState(() {
              });
            },
          
            child: Icon(Icons.person_add),
            backgroundColor: Colors.blueGrey,)
        );
  }


  // _body(){
  //   return Container(
  //     child: SingleChildScrollView(
  //       child: Container(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: [
  //             Row(children: [Text("Lista de Contatos",
  //         textAlign: TextAlign.center, 
  //         style: TextStyle(
  //         color: Colors.black87, 
  //         fontSize:30, 
  //         fontWeight: FontWeight.bold ),
  //             ),
  //             ],
  //             ), 
  //              Padding(padding: EdgeInsets.only( bottom: 10)),
  //             Column(children: [_listContacts(context)],)
  //           ],
  //           )
   
  //         ),
  //     )
  //   );
  // }



_listContacts(BuildContext context){
  return ListView.separated(
    itemCount: listaContato.length,
    itemBuilder: (context, index) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            listaContato[index]['nome'], 
            style: TextStyle(
              // color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        width: 350,
        decoration: BoxDecoration(
          // color: Colors.green.shade800,
          borderRadius: BorderRadius.circular(8),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}
     _consultar() async {
    var ret = await dbHelper.queryAllRows();
    print('Consulta todas as linhas:');
    ret.forEach((row) => print(row));
    setState(() {
      listaContato = ret;
    });
  }
}

// //MÉTODOS GERAIS 
//   AppBar _titsuperior() {
//     return AppBar(
//         title: Text("Agenda Virtual", 
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold
//           ),),
//         backgroundColor: Colors.blueGrey[400],
//         leading: Icon(Icons.safety_divider),
//         iconTheme: IconThemeData(color: Colors.white),
//       );
//   }
// }
// _body(){
//   return Container(
//     color: Colors.grey[50],  
//     child: Container(
//       child: Column(
//         children: [
//           Padding(padding: EdgeInsets.only( bottom: 30)),
//           Text("Lista de Contatos", 
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.black87, 
//             fontSize:20 ), 
//             ),
//           Padding(padding: EdgeInsets.only( bottom: 30)),
//           _listaContacts()
//         ],
//       ),
//       ),
//     ); 
// }

// _listaContacts (){
//       return Container(
//         child:  SingleChildScrollView(
//           child:  Column(
//             children: [ListView(
//         shrinkWrap: true,
//         children: <Widget> [
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text("Isabela Lima"),
//           subtitle: Text("(61) 8146-5066"),
//           trailing: Icon(Icons.edit),
//         )
//       ],
//         )],
//           ),
//         )
//         );
// }



