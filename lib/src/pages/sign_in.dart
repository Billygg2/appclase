import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/login_form.dart';
import 'package:navegar/src/widgets/icon_containers.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Regresar')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(222, 149, 178, 225),
                Color.fromARGB(204, 162, 162, 162),
                Color.fromARGB(255, 203, 108, 108),
              ],
              begin: Alignment.topLeft,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            children: <Widget>[
              const IconContainers(
                url: "images/ima.jpg",
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "PermamentMarker",
                  fontSize: 30.0,
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              const Text(
                "Pagina N°2",
                style: TextStyle(
                  fontFamily: "PermamentMarker",
                  fontSize: 30.0,
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}