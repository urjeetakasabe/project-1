// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/components/my_textfied.dart';

class myLogin extends StatelessWidget {
  myLogin({super.key});
  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailidController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 50, 51, 57),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 50, 51, 57),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: EdgeInsets.all(18),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'home',
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 8, 6, 6),
        body: SafeArea(
            child: Column(children: [
          SizedBox(height: 15),
          //logo
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/logo_page-0001.png',
              height: 100,
            ),
          ]),
          SizedBox(height: 25),
          //welcome back,you've been missed
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),

          SizedBox(height: 7),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Please enter valid information to access\n your account',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 18,
                ),
              ),
            ),
          ]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 25,
                ),
              ),
            ),
          ]),
          SizedBox(height: 5),
          //welcome bac,
          MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          MyTextField(
            controller: phonenumberController,
            hintText: 'Mobile Number',
            obscureText: false,
          ),

          MyTextField(
            controller: emailidController,
            hintText: 'Email Id',
            obscureText: false,
          ),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 20),
          MyButton(
            onTap: signUserIn,
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 18,
                ),
              ),
            ),
          ]),

          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 246, 244, 244),
                  fontSize: 18,
                ),
              ),
            ),
          ]),
        ])));
  }
}
