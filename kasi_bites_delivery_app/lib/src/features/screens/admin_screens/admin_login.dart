import 'package:flutter/material.dart';

class LoginAdmin extends StatelessWidget {
  const LoginAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Login"),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Login here"),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
