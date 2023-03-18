import 'package:auth_buttons/auth_buttons.dart';
import 'package:authentest_118/services/auth_sevice.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

final _formKey = GlobalKey<FormState>();
final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();
final TextEditingController _name = TextEditingController();
final TextEditingController _tel = TextEditingController();

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SafeArea(
          child: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: 320,
            child: ListView(
              children: [
                buildEmailInput(),
                buildPasswordInput(),
                buildNameInput(),
                buildTelInput(),
                buildEmailSignUp(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget buildTelInput() {
    return TextFormField(
      controller: _tel,
      decoration: const InputDecoration(
        labelText: "Tel",
      ),
    );
  }

  Widget buildNameInput() {
    return TextFormField(
      controller: _name,
      decoration: const InputDecoration(labelText: "Name"),
    );
  }

  Widget buildEmailSignUp() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: EmailAuthButton(
        text: "Sing Up",
        onPressed: () {
          AuthService()
              .signUpWithEmail(
                  _email.text, _password.text, _name.text, _tel.text)
              .then((value) => Navigator.pop(context));
        },
      ),
    );
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      controller: _email,
      decoration: const InputDecoration(
        labelText: "E-mail",
      ),
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      controller: _password,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
      ),
    );
  }
}
