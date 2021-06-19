import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonMap extends StatefulWidget {
  @override
  _JsonMapState createState() => _JsonMapState();
}

class _JsonMapState extends State<JsonMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    print('$url');

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
