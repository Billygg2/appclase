import 'package:flutter/material.dart';
import 'package:navegar/src/pages/menu.dart';
import 'package:navegar/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

late String _email;
late String _password;
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();




class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
         key: _formKey,
        child: Column(
          children: <Widget>[
            InputText(
              hint: "Email Address",
              label: "Email Address",
              keyboard: TextInputType.emailAddress,
              icono: const Icon(Icons.verified_user),
              onChanged: (data) {
                setState(() {
                  _email = data;
                });
              },
              validator: (data) {
                if (!data!.contains("@") || data.trim().isEmpty) {
                  return "Email invalido";
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "User password",
              label: "User password",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.lock),
              onChanged: (data) {
                setState(() {
                  _password = data;
                });
              },
              validator: (data) {
                if (data!.trim().isEmpty) {
                  return "Contraseña invalida";
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            SizedBox(
              width: double.infinity,
              height: 60.0,
             child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuLateral()),
                    );
                  }
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PoiretOne",
                      fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
