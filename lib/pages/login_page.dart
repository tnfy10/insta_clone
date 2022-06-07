import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/instagram_logo.svg',
              width: 200,
              height: 50,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: 'Email'
              ),
            ),
            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                  labelText: 'Password'
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage())
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                      'SIGNUP OR SIGNIN BY EMAIL'
                  ),
                )
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {

                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                      'FACEBOOK LOGIN'
                  )
                )
            ),
            ElevatedButton(
                onPressed: () {

                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                      'GOOGLE LOGIN'
                  ),
                )
            ),
          ],
        ),
      )
    );
  }
}