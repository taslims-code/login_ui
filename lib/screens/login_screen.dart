import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Image.asset(
                'assets/login.jpg',
                fit: BoxFit.cover,
                cacheHeight: 661,
                cacheWidth: 992,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              alignment: Alignment.topLeft,
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: TextField(
                controller: _emailTextEditingController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: TextField(
                controller: _passwordTextEditingController,
                obscureText: true,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(8),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {},
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.purple,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.purple,
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.grey,
                  ),
                  Text('OR'),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/search.png',
                    height: 32,
                    width: 32,
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to Logistics?'),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
