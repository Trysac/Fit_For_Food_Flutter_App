import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  String email = '';
  String password = '';

  bool _isLoading = false;
  // GETTER y SETTER
  bool get isLoading => _isLoading;
  set isloading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool isValidForm() {
    print(formKey.currentState?.validate());
    print('$email-$password');
    return formKey.currentState?.validate() ?? false;
  }
}
