import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/icon_containers.dart';
import 'package:navegar/src/widgets/register_form.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Regresar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 182, 163, 124),
                Color.fromARGB(204, 155, 151, 144),
                Color.fromARGB(204, 224, 219, 212),
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
                "Register",
                style: TextStyle(
                  fontFamily: "PermamentMarker",
                  fontSize: 30.0,
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}