// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  //form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              Image.asset("Images/forms.png"),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter Your Email Here",
                  hintText: "you@example.com",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Your Password Here",
                  hintText: "12345678",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
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
