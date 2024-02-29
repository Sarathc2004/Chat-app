import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:chat_app/view/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  Registerpage({super.key});

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
          Text("Let's create an account for you"),
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
            height: 10,
          ),
          MyTextfield(
            controller: confirmpassword,
            hintText: "Confirmpassword",
            obscuretext: true,
          ),
          SizedBox(
            height: 100,
          ),
          MyButton(
            text: "Register",
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account ?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ),
                      (route) => false);
                },
                child: Text(
                  " Login now",
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
