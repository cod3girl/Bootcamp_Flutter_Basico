import 'dart:convert';
import 'package:http/http.dart' as http;

class Net {
  Future getApi(String url) async {
    var resp = await http.get(Uri.parse(url));
    var data = resp.body;
    var value = jsonDecode(data);
    return value;
  }
}
