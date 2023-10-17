import 'package:flutter/material.dart';
import 'package:app8964/components/my_button.dart';
import 'package:app8964/components/my_textfield.dart';
import 'package:app8964/components/square_tile.dart';
import 'package:app8964/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              const Text(
                '好久不見!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: '帳號',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: '密碼',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '忘記密碼?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '或',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(
                    onTap: ()=>AuthService().signInWithGoogle(),
                    
                    imagePath: 'https://cdn.discordapp.com/attachments/1132312462667026513/1163218799265325166/apple-logo.png?ex=653ec6ed&is=652c51ed&hm=b7f47f1a4e0c8514d316fa4ffe22a1160080e288182e2b2e279de260b671493f&'),

                  const SizedBox(width: 25),

                  // apple button
                  SquareTile(
                    onTap: ()=>AuthService().signInWithGoogle(),
                    imagePath: 'https://cdn.discordapp.com/attachments/1132312462667026513/1163219054639718420/Logo-google-icon-PNG.png?ex=653ec72a&is=652c522a&hm=6639241224da03569b6b31cdf916089dd5d23c7c322ebcd71c9ddc58dabe96e7&')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '還不是會員?',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '去註冊',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
