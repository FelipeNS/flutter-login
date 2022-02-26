class ApiService {
  static const String baseUrl = "http://10.0.2.2:3333/";

  static final store = Uri.parse('${baseUrl}user/');
  static final auth = Uri.parse('${baseUrl}user/auth');
}