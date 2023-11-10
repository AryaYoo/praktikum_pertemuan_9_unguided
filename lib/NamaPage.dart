import 'package:flutter/material.dart';

class NamaPage extends StatefulWidget {
  int radioGroupValue;
  NamaPage({Key? key, required this.radioGroupValue}) : super(key: key);
  @override
  _NamaPageState createState() => _NamaPageState();
}
class _NamaPageState extends State<NamaPage> {
  TextEditingController _namaController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ubah Nama"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              String nama = _namaController.text; 
              Navigator.pop(context, nama); 
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _namaController,
                decoration: InputDecoration(
                  labelText: 'Masukkan Nama',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
