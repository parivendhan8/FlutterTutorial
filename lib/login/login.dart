import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    String name = "assets/images/warrantynewimage.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 50,),
            Image.asset(
              name,
              height: size,
              width: size,
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            emailWidget(),
            passwordWidget(),
            loginButton(),
            socialLogin()
          ],
        ),
      ),
    );
  }

  Widget emailWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: emailController,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email, color: Colors.red,),
            border: UnderlineInputBorder(),
            labelText: "Email ID",
            labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(50)
          )
            ),
      ),
    );
  }

  Widget passwordWidget() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: TextField(
      obscureText: isPasswordVisible,
      cursorColor: Colors.black54,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: "Password",
          labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.red,
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          suffixIcon: IconButton(
            onPressed: () {
             setState(() {
               isPasswordVisible = !isPasswordVisible;
             });
            },
            icon: Icon(
                isPasswordVisible
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined
            ),
            color: Colors.red,
          )),
    ),
  );

  Widget loginButton() {
    return Padding(
      padding: const EdgeInsets .all(25),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            textStyle: const TextStyle(fontSize: 15),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          ),
          onPressed: () {

            print(emailController.text.toString());

          },
          child: const Text(
            "LOGIN...",
          ), ),
    );
  }

  Widget socialLogin() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          imageContainer('google.png'),
          imageContainer('facebook.png'),
          imageContainer('apple_logo.png'),
        ],
      ),
    );
  }

  Container imageContainer(String value) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1.5)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset("assets/$value"),
      ),
    );
  }

}


