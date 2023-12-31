import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sign_in.dart';
import 'package:navegar/src/widgets/input_text.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late String _username;
  late String _name;
  late String _email;
  late String _password;
  late bool _validatedUsername;
  late bool _validatedName;
  late bool _validatedEmail;
  late bool _validatedPassword;
  late bool _acceptedTerms = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _username = '';
    _name = '';
    _email = '';
    _password = '';
    _validatedUsername = false;
    _validatedName = false;
    _validatedEmail = false;
    _validatedPassword = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            InputText(
              hint: "Username",
              label: "Username",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.supervised_user_circle_sharp),
              onChanged: (data) {
                setState(() {
                  _username = data;
                });
              },
              validator: (data) {
                if (data == null || data is! String || data.trim().isEmpty) {
                  return "Usuario invalido";
                } else if (data.contains(RegExp(r'[0-9]'))) {
                  return "El usuario no puede contener números";
                } else {
                  _validatedUsername = true;
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "Name",
              label: "Name",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.text_fields),
              onChanged: (data) {
                setState(() {
                  _name = data;
                });
              },
              validator: (data) {
                if (data == null || data is! String || data.trim().isEmpty) {
                  return "Nombres invalidos";
                } else if (data.contains(RegExp(r'[0-9]'))) {
                  return "Los nombres no pueden contener números";
                } else {
                  _validatedName = true;
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "Email Address",
              label: "Email Address",
              keyboard: TextInputType.emailAddress,
              icono: const Icon(Icons.email),
              onChanged: (data) {
                setState(() {
                  this._email = data;
                });
              },
              validator: (data) {
                if (data == null || !data.contains("@") || data.trim().isEmpty) {
                  return "Email invalido";
                } else {
                  _validatedEmail = true;
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "User password",
              label: "User password",
              keyboard: TextInputType.text,
              obsecure: true,
              icono: const Icon(Icons.lock),
              onChanged: (data) {
                setState(() {
                  _password = data;
                });
              },
              validator: (data) {
                if (data == null || data.trim().isEmpty) {
                  return "Contraseña invalida";
                } else {
                  _validatedPassword = true;
                }
                return null;
              },
            ),
            Divider(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: _acceptedTerms,
                  onChanged: (data) {
                    setState(() {
                      _acceptedTerms = data!;
                    });
                  },
                ),
                Text("Acepto los términos y condiciones"),
                if (!_acceptedTerms)
                  Text(
                    " ¡Por favor, marque el checkbox!",
                    style: TextStyle(color: Colors.red),
                  ),
              ],
            ),
            Divider(height: 20.0),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                  if (_validatedEmail &&
                      _validatedName &&
                      _validatedPassword &&
                      _validatedUsername &&
                      _acceptedTerms) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  }
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: Color.fromARGB(255, 156, 47, 180),
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
