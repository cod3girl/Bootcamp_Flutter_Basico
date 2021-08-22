import 'dart:convert';
import 'package:http/http.dart' as http;

class Net {
  
  Future getApi( String url ) async {
    var rpt = await http.get( Uri.parse(url) );
    var data = rpt.body;
    var value = jsonDecode(data);
    return value;
  }

}
