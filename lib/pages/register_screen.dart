import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_drop/components/my_button.dart';
import 'package:group_drop/components/my_textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final profilenameController = TextEditingController();
  final verifypasswordController = TextEditingController();

  // sign user in method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: SizedBox(
              child: Forms(
                  usernameController: usernameController,
                  passwordController: passwordController,
                  profilenameController: profilenameController,
                  verifypasswordController: verifypasswordController),
            ),
          ),
        ),
      ),
    );
  }
}

class Forms extends StatelessWidget {
  const Forms({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.profilenameController,
    required this.verifypasswordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController profilenameController;
  final TextEditingController verifypasswordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Sign Up",
            style: GoogleFonts.roboto(
              color: const Color.fromRGBO(28, 66, 198, 1.0),
              fontWeight: FontWeight.w500,
              fontSize: 56.0,
            )),
        const SizedBox(height: 56),

        // username textfield
        MyTextField(
          controller: profilenameController,
          hintText: 'Profile',
          obscureText: false,
          img: Icons.person,
        ),
        const SizedBox(height: 35.0),

        MyTextField(
          controller: usernameController,
          hintText: 'Username',
          obscureText: false,
          img: Icons.email,
        ),
        const SizedBox(height: 35.0),

        // password textfield
        MyTextField(
          controller: passwordController,
          hintText: 'Password',
          obscureText: true,
          img: Icons.lock,
        ),
        const SizedBox(height: 35.0),
        MyTextField(
          controller: verifypasswordController,
          hintText: 'Verify Password',
          obscureText: false,
          img: Icons.lock,
        ),
        const SizedBox(height: 35.0),
        // sign in button
        const MyButton(),
      ],
    );
  }
}
