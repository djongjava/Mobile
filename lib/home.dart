import 'package:flutter/material.dart';
import 'package:tugas/elena.dart';
import 'package:tugas/pengaduan.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar:AppBar(
            title: Text('PENGADUAN'),

            body: Column(
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                  child: ListTile(
                    title: Text('Akses Elen',style: TextStyle(fontSize: 12.0),),
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute( builder:(context) {
                            return elena();
                          } ),
                        );},

                    trailing: Row(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                        Icon(Icons.message,color: Colors.black,),
                      Text('4')]),

                  ),
                  child: Card(
                    margin:
                       EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                      child: ListTile(
                          title: Text('Lupa Password',style: TextStyle(fontSize: 12.0),),
                        onTap: (){
                            Navigator.push(
                                       context,
                                            MaterialPageRoute(
                                                builder: (context) {return pengaduan();},
              ));
            },


      ),),


                        ),
                ]),

              )));
  }
}