import 'dart:convert';
import 'package:http/http.dart' as http;

import 'model/painting/painting_api.dart';

class ApiService {
  ApiService({String? host, int? port})
      : _host = host ?? 'twip-paintings.pages.dev',
        _port = port ?? 443;

  final String _host;
  final int _port;

  Future<List<PaintingApi>> getPaintings() async {
    var url =
    Uri.https(_host, '/paintings.json');
    // Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
    // Uri.http('$_host:$_port', '/paintings/paintings.json');

    var client = http.Client();
    try {
      var response = await client.get(url);
      // final Map<String, String> headers = {'Authorization': 'Bearer token'};
      // await http.get(url, headers: headers);

      if (response.statusCode == 200 || response.statusCode == 304) {
        final stringData = response.body;
        final json = jsonDecode(stringData) as List<dynamic>;
        return json.map((element) => PaintingApi.fromJson(element)).toList();
      } else {
        return List.empty();
      }
    } on Exception catch (error) {
      return List.empty();
    } finally {
      client.close();
  }
  }
}