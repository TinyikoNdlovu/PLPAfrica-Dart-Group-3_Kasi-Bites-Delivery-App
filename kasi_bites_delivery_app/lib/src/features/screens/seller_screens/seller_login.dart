import 'package:flutter/material.dart';

class LoginSeller extends StatelessWidget {
  const LoginSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seller Login"),),
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
