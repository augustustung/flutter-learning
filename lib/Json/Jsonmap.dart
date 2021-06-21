import 'dart:convert';
import 'package:http/http.dart' as http;

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
