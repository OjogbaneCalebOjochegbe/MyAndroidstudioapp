import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                '--',
                height: 120,
              ),

              const SizedBox(height: 35),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

