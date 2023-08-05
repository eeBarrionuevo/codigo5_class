import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> names = [
    "Luis 987123222 luis@gmail.com",
    "Eddy ",
    "Carlos ",
    "Isabel ",
    "Jose",
    "Miguel",
    "Adrian",
  ];

  List<Map<String, dynamic>> people = [
    {"name": "Adrian", "address": "Av. Cayma 123", "phone": "987122333"},
    {"name": "Eddy", "address": "Av. Lima 6565", "phone": "987122666"},
    {"name": "Isabel", "address": "Av. Torres 333", "phone": "987122222"},
    {"name": "Adrian", "address": "Av. Cayma 123", "phone": "987122333"},
    {"name": "Eddy", "address": "Av. Lima 6565", "phone": "987122666"},
    {"name": "Isabel", "address": "Av. Torres 333", "phone": "987122222"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Classes"),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Text("Agregar"),
          ),
          ...people
              .map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    child: Text(e["name"][0]),
                  ),
                  title: Text(e["name"]),
                  subtitle: Text(e["address"]),
                  trailing: Text(e["phone"]),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
