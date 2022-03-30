// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:validate/validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Login Flutter', home: NewApp());
  }
}

class _LoginData {
  String email = '';
  String password = '';
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  //form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _LoginData data = new _LoginData();

  String? validateEmail(String? email) {
    try {
      Validate.isEmail(email);
    } catch (e) {
      return "Please enter a valid Email";
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password.toString().length < 8) {
      return "Password length cannot be less than 8";
    }

    return null;
  }

  void submitForm() {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      _formKey.currentState?.save();
      print("Logging Form Data");
      print("Email is ${data.email}");
      print("Password is ${data.password}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Login Flutter"),
      )),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(child: Image.asset("Images/forms.png"), height: 150.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter Your Email Here",
                  hintText: "you@example.com",
                ),
                validator: validateEmail,
                onSaved: (value) {
                  data.email = value.toString();
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Your Password Here",
                  hintText: "12345678",
                ),
                validator: validatePassword,
                onSaved: (value) {
                  data.password = value.toString();
                },
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                width: 200.0,
                child: ElevatedButton(
                  onPressed: submitForm,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Login"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
