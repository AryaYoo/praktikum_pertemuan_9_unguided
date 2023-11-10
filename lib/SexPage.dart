import 'package:flutter/material.dart';

class SexPage extends StatefulWidget {
  int radioGroupValue;
  SexPage({Key? key, required this.radioGroupValue}) : super(key: key);
  @override
  _SexPageState createState() => _SexPageState();
}

class _SexPageState extends State<SexPage> {
  List<String> _favoriteList = [];
  String? _selectedFavorite;
  int? _radioGroupValue;

  void _radioOnChanged(int index) {
    setState(() {
      _radioGroupValue = index;
      _selectedFavorite = _favoriteList[index];
      print('_selectedRadioValue $_selectedFavorite');
    });
  }

  @override
  void initState() {
    super.initState();
    _favoriteList
      ..add('Pria')
      ..add('Wanita');
    _radioGroupValue = widget.radioGroupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ubah Jenis Kelamin"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectedFavorite),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Radio(
                value: 0,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              Text('Pria'),
              Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              Text('Wanita'),
            ],
          ),
        ),
      ),
    );
  }
}