import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Loginprovider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void loginProvider(String email, String password) async {
    setLoading(true);
    try {
      Response response = await post(
          Uri.parse(
              "https://marktestapp.pythonanywhere.com/api/auth/rider/login/"),
          body: {"email": email, "password": password});

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        print("Success");
        setLoading(false);
      } else {
        setLoading(false);
        print("Failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
