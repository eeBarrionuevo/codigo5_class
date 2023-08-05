import 'package:codigo5_class/person.dart';
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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> names = [
    "Eddy",
    "Carlos ",
    "Isabel ",
    "Jose",
    "Miguel",
    "Adrian",
  ];

  Person pepe = Person(name: "José", address: "Av. Lima", phone: "12323");
  Person manolo = Person(name: "José", address: "Av. Lima", phone: "12323");
  Person fiorella = Person(name: "José", address: "Av. Lima", phone: "12323");
  Person luis = Person(name: "José", address: "Av. Lima", phone: "12323");
  Person elvis = Person(name: "José", address: "Av. Lima", phone: "12323");

  // List<Map<String, dynamic>> people = [
  //   {"name": "Adrian", "address": "Av. Cayma 123", "phone": "987122333"},
  //   {"name": "Eddy", "address": "Av. Lima 6565", "phone": "987122666"},
  //   {"name": "Isabel", "address": "Av. Torres 333", "phone": "987122222"},
  // ];

  List<Person> people = [
    Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
    Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
    Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
    Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
    Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
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
            onPressed: () {
              //Agregar una nueva persona
              // people.add(
              //   {
              //     "name": "Pedro",
              //     "address": "Cll Torres 123",
              //     "phone": "987111222",
              //   },
              // );
              setState(() {});
            },
            child: Text("Agregar"),
          ),
          ...people
              .map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    child: Text(e.name[0]),
                  ),
                  title: Text(e.name),
                  subtitle: Text(e.address),
                  trailing: Text(e.phone),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
