// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormSate();
}

class _MyCustomFormSate extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Map<String, dynamic> formObject = {};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Name required"),
                  MinLengthValidator(6, errorText: "Name must be at least of 6 chars"),
                ]),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Email required"),
                  EmailValidator(errorText: "Please insert a valid email"),
                ]),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                  label: Text('Phone'),
                  border: OutlineInputBorder(),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Phone number required"),
                  PatternValidator(r'^(?:[+0][1-9])?[0-9]{10,12}$', errorText: ''),
                ]),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter password',
                  label: Text('password'),
                  border: OutlineInputBorder(),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'password is required'),
                  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
                  PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character'),
                ]),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  child: const Text("Submit"),
                  onPressed: () {
                    print("Its working.....!");
                    formObject["name"] = nameController.text;
                    formObject["email"] = emailController.text;
                    formObject["phone"] = double.parse(phoneController.text);
                    formObject["password"] = passwordController.text;
                    print(formObject);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
