import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://www.simplifiedcoding.net/demos/marvel";

  Future<http.Response> fetchSuperheroes() async {
    return await http.get(Uri.parse(apiUrl));
  }
}