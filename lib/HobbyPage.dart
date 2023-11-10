import 'package:flutter/material.dart';

class HobbyPage extends StatefulWidget {
  int radioGroupValue;
  HobbyPage({Key? key, required this.radioGroupValue}) : super(key: key);
  @override
  _HobbyPageState createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
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
      ..add('Bermusik')
      ..add('Olah Raga')
      ..add('Memancing');
    _radioGroupValue = widget.radioGroupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ubah Hobby"),
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
              Text('Bermusik'),
              Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              Text('Olah Raga'),
              Radio(
                value: 2,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              Text('Memancing'),
            ],
          ),
        ),
      ),
    );
  }
}