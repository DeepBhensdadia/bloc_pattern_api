extension UrlType on String {
  String get baseUrl => 'https://jsonplaceholder.typicode.com/$this';
}

String url(String value) => UrlType(value).baseUrl;

class ApiEndPoint {
  const ApiEndPoint();
  static String todos = url('todos/');
}
