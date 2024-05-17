import 'package:aplikasi_sidang/screen/home/home_screen.dart';
import 'package:aplikasi_sidang/screen/signup/auth_service.dart';
import 'package:aplikasi_sidang/screen/login/component/componen.dart';
import 'package:aplikasi_sidang/screen/login/component/form.dart';
import 'package:aplikasi_sidang/screen/login/login_berhasil.dart';
import 'package:aplikasi_sidang/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;



  // @override
  // void dispose(){
  //   super.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyles.title,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 159, 228, 0),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0, left: 22),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                      Image.asset('asset/ic-pertaarungas.png'),
                
                        Text(
                          '',
                          style: TextStyle(fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24.0),
                        LoginForm(
                          emailController: emailController,
                          passwordController: passwordController,
                          isObscure: isObscure,
                        ),
                        const SizedBox(height: 16.0),
                        LoginButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => LoginSuccessScreen()),
                            );
                            // Add login logic here
                          },
                        ),
                        const SizedBox(height: 24.0),
                        
                        Text(
                          "Belum punya Akun?",
                          style: TextStyle(fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }}