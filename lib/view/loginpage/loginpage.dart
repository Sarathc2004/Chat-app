import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:chat_app/view/registerpage/registerpage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            height: 30,
          ),
          Text("Welcome back,you've been missed!"),
          SizedBox(
            height: 20,
          ),
          MyTextfield(
            controller: emailcontroller,
            hintText: "Email",
            obscuretext: false,
          ),
          SizedBox(
            height: 10,
          ),
          MyTextfield(
            controller: passwordcontroller,
            hintText: "Password",
            obscuretext: true,
          ),
          SizedBox(
            height: 100,
          ),
          MyButton(
            text: "Login",
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont have an account ?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registerpage(),
                      ),
                      (route) => false);
                },
                child: Text(
                  " Register now",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
