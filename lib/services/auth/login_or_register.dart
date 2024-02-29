import 'package:whatsapp/pages/login_page.dart';
import 'package:whatsapp/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // innitiallt, show login page
  bool showLoginPage = true;

  //toggle between login and register pages
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return loginPage(
        onTap: togglePages,
      );
    } else {
      return registerPage(
        onTap: togglePages,
      );
    }
  }
}
