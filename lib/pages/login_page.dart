import 'package:coffeeshopapp/components/my_button.dart';
import 'package:coffeeshopapp/components/my_textfield.dart';
import 'package:coffeeshopapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login functons
  void login() {
    // authentication backend logic

    //on successfull login navigate to home page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              //message app signin
              Text(
                "Food delivery App",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),

              //email text filed
              MyTextfield(
                  controller: emailController,
                  hintText: "Input Email",
                  obscureText: false),

              //password text field
              MyTextfield(
                  controller: passwordController,
                  hintText: "Input Password",
                  obscureText: true),

              //signin button
              MyButton(text: "Sign In", onTap: login),
              const SizedBox(
                height: 25,
              ),
              //not a member? register now button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register Now?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
