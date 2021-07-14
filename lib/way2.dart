import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data {
  String title;
  bool completed;

  Data({required this.title, required this.completed});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(title: json["title"], completed: json["completed"]);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Data> data = [];
  @override
  void initState() {
    // TODO: implement initState
    fetchData().then((value) => setState(() {
          data.addAll(value);
        }));
    super.initState();
  }

  Future<List<Data>> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    final response = await http.get(url);
    List<Data> todos = [];
    if (response.statusCode == 200) {
      var currentTodos = json.decode(response.body);
      for (var currentTodo in currentTodos) {
        todos.add(Data.fromJson(currentTodo));
      }
    } else {
      throw Exception("Failed to load data");
    }
    return todos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, int i) {
              return InkWell(
                onTap: () {
                  bool isCompleted = data[i].completed
                      ? !data[i].completed
                      : data[i].completed;
                  setState(() {
                    data.elementAt(i).completed = isCompleted;
                  });
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      data[i].title.toString(),
                      style: TextStyle(
                          color:
                              data[i].completed ? Colors.grey : Colors.black),
                    ),
                  ),
                ),
              );
            }));
  }
}
