import 'package:flutter/material.dart';

import '../widgets/icon_containers.dart';
import '../widgets/register_form.dart';

class SignUp extends StatefulWidget {
  const SignUp( {super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 182, 163, 124),
            Color.fromARGB(204, 155, 151, 144),
            Color.fromARGB(204, 224, 219, 212),
          ], begin: Alignment.topLeft)),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            children: <Widget>[
              //Aqui ubicaremos el url de una imagen
              const IconContainers(
                url: "images/ima.jpg",
              ),
               const Text("Register",
                  style: TextStyle(
                    fontFamily: "PermamentMarker",
                    fontSize: 30.0,
                  )),
              const Divider(
                height: 20.0,
              ),
              RegisterForm()
              // Aqui llamamos a la pantalla del formulario
            ],
          ),
        ),
      ),
    );
  }
}