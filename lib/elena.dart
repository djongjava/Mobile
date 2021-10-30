import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class elena extends StatefulWidget{
  @override
  _elena createState() => _elena();
}

class _elena extends State<elena> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Elena"),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top:10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                padding:EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                child: Text(messages[index].messageContent),
              );
            },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 20, ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.send,color: Colors.white,size: 18,),
                      backgroundColor: Colors.blue,
                      elevation: 0,
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
    );
  }
}

List<ChatUsers> messages = [
  ChatUsers(messageContent:"Mohon izin untuk bertanya, sejak tgl 30 Oktober, saya tidak dapat akses ELEN, keterangannya “user diblokir”. Mohon penjelasannya Terimakasih sebelumnya",messageType: "sender"),
  ChatUsers(messageContent:"Untuk user akun anda sudah kami buka kembali, Silahkan dicoba akses",messageType: "receiver"),

];
class ChatUsers {
  String messageContent;
  String messageType;

  ChatUsers({required this.messageContent, required this.messageType,});
}

