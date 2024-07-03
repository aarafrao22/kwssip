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
              Image.asset(
                'asset/images/blue.png',
                height: 104,
              ),
              const Text(
                "KWSSIP",
                style: TextStyle(
                    color: Color(0xff43A5E4),
                    fontSize: 36,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "Karachi Water and Sewerage Services\nImprovement Project",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff43A5E4),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter Email',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Color(0xfff0f0f0),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter Password',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Color(0xfff0f0f0),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                height: 50, // Make the button full width
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xff43A5E4), // foreground
                  ),
                  onPressed: () {
                    // Shift to Home
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeActivity(),
                    ));
                  },
                  child: const Text('Login'),
                ),
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
