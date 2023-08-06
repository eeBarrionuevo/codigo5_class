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
  // Institution tecsup = Institution(
  //   name: "Tecsup",
  //   people: [],
  // );

  List<Institution> institutions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Classes"),
        actions: [
          IconButton(
            onPressed: () {
              Institution utp = Institution(
                name: "UTP",
                people: [],
              );
              Institution pucp = Institution(
                name: "UPN",
                people: [],
              );
              institutions.add(pucp);
              setState(() {});
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: institutions
            .map(
              (e) => Column(
                children: <Widget>[
                  Text(
                    "${e.name} (${e.people.length})",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      e.people.add(
                        Person(
                          name: "Luis",
                          address: "Av. Lima 123",
                          phone: "12121212",
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text("Agregar persona"),
                  ),
                  ...e.people
                      .map(
                        (e) => ListTile(
                          leading: CircleAvatar(
                            child: Text(e.name[0]),
                          ),
                          title: Text(e.name),
                          subtitle: Text("${e.address} | ${e.phone}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  e.name = "Daniel";
                                  e.address = "Av. Arequipa  123";
                                  e.phone = "999000999";

                                  // e = Person(
                                  //     name: "Juan",
                                  //     address: "Av. Cayma 123",
                                  //     phone: "22344232");

                                  print(e.name);

                                  setState(() {});
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  // tecsup.people.removeLast(); // Eliminar el último elemento
                                  // tecsup.people.removeRange(0, 3); // Eliminar por rango
                                  // tecsup.people.removeAt(1);
                                  // e.people.remove(e);
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
