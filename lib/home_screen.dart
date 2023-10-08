import 'package:flutter/material.dart';
import 'package:login_app/textinput.dart';
import 'colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset('images/image1.png'),
                ),
                const SizedBox(
                  height: 20,
                ),

                // welcome text
                const Text(
                  'welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: darkgrey,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 20),
                // Enter email
                TextInput(
                  hinttext: 'EMAIL',
                  controller: _email,
                ),
                SizedBox(height: 10),
                TextInput(
                  hinttext: 'PASSWORD ',
                  controller: _password,
                  password: true,
                ),

                SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: darkblue,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Login Button
                InkWell(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: darkblue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an Account!!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: darkgrey,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      '  Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: darkblue,
                        fontSize: 20.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
