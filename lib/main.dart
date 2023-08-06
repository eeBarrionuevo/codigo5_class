import 'package:codigo5_class/institution.dart';
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
  // List<Person> people = [
  //   Person(name: "Juan", address: "Av. Lima", phone: "12321323"),
  // ];

  Institution tecsup = Institution(
    name: "Tecsup",
    people: [],
  );

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
              people.add(
                Person(
                  name: "Daniel",
                  address: "Av Lima 123",
                  phone: "12323",
                ),
              );
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
