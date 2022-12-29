import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController adresseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            Image.asset(
              "assets/minecraft.jpg",
            ),
            const SizedBox(
              height: 40,
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
                      label: Text("username"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      RegExp regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (value!.isEmpty || !regex.hasMatch(value)) {
                        return "L'adresse email n'est pas valide !";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("email"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "date de naissance ne doit pas etre vide";
                      } else {
                        return null;
                      }
                    },
                    controller: birthController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Année de naissance"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "date de naissance ne doit pas etre vide";
                      } else {
                        return null;
                      }
                    },
                    controller: adresseController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Adresse de facturation"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_keyForm.currentState!.validate()) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    String contentAlert =
                                        "username : ${usernameController.text}\nEmail : ${emailController.text}\nMot du passe : ${passwordController.text}\nAnnée du naissance : ${birthController.text}\nAdresse : ${adresseController.text}";
                                    return AlertDialog(
                                      title: const Text("Informations"),
                                      content: Text(contentAlert),
                                    );
                                  });
                            }
                          },
                          child: const Text("S'inscrire"),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            usernameController.clear();
                            emailController.clear();
                            passwordController.clear();
                            birthController.clear();
                            adresseController.clear();
                          },
                          child: const Text("Annuler"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
