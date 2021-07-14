import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: JsonParsingSimple(),
  ));
}

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // print(response.body[0]);
      return json.decode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  late Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
    // data.then((value) => print(value[0]['title']));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Json Parsing"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return createListView(context, snapshot.data);
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future getData() async {
    var data;
    String url = "https://jsonplaceholder.typicode.com/posts";
    Network network = Network(url);

    data = network.fetchData();

    return data;
  }

  Widget createListView(BuildContext context, List data) {
    return Container(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, int i) {
              return Column(
                children: <Widget>[
                  Divider(
                    height: 0.5,
                  ),
                  ListTile(
                      title: Text("${data[i]["title"]}"),
                      subtitle: Text("${data[i]["body"]}"),
                      leading: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 23,
                            child: Text("${data[i]["userId"]}"),
                          )
                        ],
                      ))
                ],
              );
            }));
  }
}
