import 'package:flutter/material.dart';
import 'package:jascal/componenets/login_textfield.dart';
import 'package:jascal/componenets/oauth.dart';
import 'package:jascal/componenets/signIn_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),

            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            //welcome back player!
            const SizedBox(
              height: 50,
            ),

            Text(
              'Welcome Back Player! Get your game on!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            //username textfield

            const SizedBox(
              height: 25,
            ),

            LoginTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            //password textfield
            const SizedBox(
              height: 10,
            ),
            LoginTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            //forgot password?
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            //sign in button

            const SizedBox(
              height: 25,
            ),

            SignInButton(
              onTap: signUserIn,
            ),

            const SizedBox(
              height: 25,
            ),

            // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google + apple sign in button,
                OauthLogin(imagePath: 'lib/images/google.png'),
                SizedBox(width: 25),
                OauthLogin(imagePath: 'lib/images/apple.png')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?'),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )

            //not a memeber? register now
          ],
        ),
      ),
    );
  }
}
