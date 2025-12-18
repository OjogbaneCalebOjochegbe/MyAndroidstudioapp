import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'forgotpassword_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // ✅ EMAIL
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // ✅ PASSWORD
              const TextField(
                obscureText: true,
                obscuringCharacter: '•',
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 10),

              // ✅ FORGOT PASSWORD NAVIGATION
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ✅ LOGIN BUTTON (STATE FIXED)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // ✅ COUNTER DISPLAY (FOR DEBUGGING)
              Text(
                "Login attempts: $_counter",
                style: const TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 28),

              // ✅ SIGN UP NAVIGATION
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

