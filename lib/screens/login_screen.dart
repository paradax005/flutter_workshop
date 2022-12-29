import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authetifier"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: ListView(
          children: [
            Image.asset(
              "assets/minecraft.jpg",
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
              key: _keyForm,
              child: Column(
                children: [
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "username ne doit pas etre vide";
                      } else if (value.length < 5) {
                        return "Le username doit avoir au moins 5 caractères";
                      } else {
                        return null;
                      }
                    },
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("User name"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "password ne doit pas etre vide";
                      } else if (value.length < 8) {
                        return "Le password doit avoir au moins 8 caractères";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("password"),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_keyForm.currentState!.validate()) {}
                      },
                      child: const Text(
                        "S'Authentifier",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        "Créer un compte",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Mot de passe oublié ? ",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Cliquer ici",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
