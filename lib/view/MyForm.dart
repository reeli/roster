import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerAge = TextEditingController();

  @override
  void dispose() {
    controllerUsername.dispose();
    controllerPassword.dispose();
    controllerAge.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: controllerUsername,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some text";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "Username", hintText: "Please input your name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: controllerPassword,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Password is required";
                  }
                },
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: controllerAge,
                decoration: const InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Processing Data")));
                    print(controllerUsername.text);
                    print(controllerPassword.text);
                    print(controllerAge.text);
                  }
                },
                child: const Text("Submit"),
              ),
            )
          ],
        ));
  }
}
