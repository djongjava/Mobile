import 'package:flutter/material.dart';


class pengaduan extends StatefulWidget {
  @override
  _pengaduan createState() => _pengaduan();
}
class _pengaduan extends State<pengaduan> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaduan"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Judul",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value==null || value.isEmpty) {
                    return 'Judul tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Jenis Pengaduan",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value==null || value.isEmpty) {
                    return 'Judul tidak boleh kosong';
                  }
                  return null;
                },
              ),
              // TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Deskripsi",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value==null || value.isEmpty) {
                    return 'Deskripsi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              RaisedButton(
                child: Text(
                  "Kirim Pengaduan",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}