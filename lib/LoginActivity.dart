import 'package:flutter/material.dart';
import 'package:kwssip/HomeActivity.dart';

class LoginActivity extends StatelessWidget {
  const LoginActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              Image.asset('asset/images/kwssip.png'),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28))),
                  hintText: 'Enter Email',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28))),
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red, // foreground
                ),
                onPressed: () {
                  //Shift to Home
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeActivity()));
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
