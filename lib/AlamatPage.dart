import 'package:flutter/material.dart';

class AlamatPage extends StatefulWidget {
  int radioGroupValue;
  AlamatPage({Key? key, required this.radioGroupValue}) : super(key: key);
  @override
  _AlamatPageState createState() => _AlamatPageState();
}
class _AlamatPageState extends State<AlamatPage> {
  TextEditingController _AlamatController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ubah Alamat"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              String Alamat = _AlamatController.text; 
              Navigator.pop(context, Alamat); 
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
                controller: _AlamatController,
                decoration: InputDecoration(
                  labelText: 'Masukkan Alamat',
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
