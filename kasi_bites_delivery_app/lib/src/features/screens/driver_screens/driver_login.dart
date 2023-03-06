import 'package:flutter/material.dart';

class LoginDriver extends StatelessWidget {
  const LoginDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Driver Login"),),
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
