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

  getData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Classes"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            tecsup.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              tecsup.people.add(
                Person(
                  name: "Elvis",
                  address: "Av. Lima 123",
                  phone: "12121212",
                ),
              );
              setState(() {});
            },
            child: const Text("Agregar persona"),
          ),
          ...tecsup.people
              .map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    child: Text(e.name[0]),
                  ),
                  title: Text(e.name),
                  subtitle: Text("${e.address} | ${e.phone}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      print("Eliminando...");
                    },
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
