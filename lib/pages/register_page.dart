import 'package:whatsapp/services/auth/auth_service.dart';
import 'package:whatsapp/components/my_button.dart';
import 'package:whatsapp/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class registerPage extends StatelessWidget {
  //email and pw controlers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

//to register page
  final void Function()? onTap;

  registerPage({super.key, required this.onTap});

  //register method
  void register(BuildContext context) {
    // auth service
    final authService = AuthService();
    //password match => create user
    if (_passwordController.text == _confirmController.text) {
      try {
        authService.signUpWithEmailPassword(
            _emailController.text, _passwordController.text);
      }
      //catch error
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    //password don't match => tell user to fix it
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("passwords don't match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            //wolcome back message
            Text(
              "Create your account",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),

            const SizedBox(
              height: 25,
            ),

            //email textfield
            MyTextField(
              hinttext: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(
              height: 10,
            ),

            //pw textfield
            MyTextField(
              hinttext: "Password",
              obscureText: true,
              controller: _passwordController,
            ),

            const SizedBox(
              height: 10,
            ),

            //confirm pw textfield
            MyTextField(
              hinttext: "Confirm your password",
              obscureText: true,
              controller: _confirmController,
            ),

            const SizedBox(
              height: 25,
            ),

            //register button
            MyButton(
              text: "register",
              onTap: () => register(context),
            ),

            const SizedBox(
              height: 25,
            ),

            //register nom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
