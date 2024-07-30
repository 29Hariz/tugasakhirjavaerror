import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/screen/dashboard_screen.dart';
import 'package:tugas_akhir/screen/signup_screen.dart';
import 'package:tugas_akhir/user_auth/firebase_auth_services.dart';
import 'package:tugas_akhir/widget/form_container_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        //height: size.height,
        //width: double.infinity,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/SignUp_Page.png",
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: size.height * 0.35,
                left: size.width * 0.1,
                right: size.width * 0.1,
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            backgroundColor:
                                const Color.fromRGBO(184, 255, 249, 1),
                            elevation: 5,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignupScreen();
                                },
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            backgroundColor:
                                const Color.fromRGBO(239, 255, 253, 2),
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                "Log In",
                                style: TextStyle(
                                  fontFamily: 'K2D',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(height: 50),
                  FormContainerWidget(
                    controller: _emailController,
                    hintText: "Email",
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FormContainerWidget(
                    controller: _passwordController,
                    hintText: "Password",
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child: GestureDetector(
                    onTap: _signIn,
                    child: Container(
                      width: 200,
                      height: 45,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(66, 194, 255, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "K2D",
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(height: 30),
                ])),
          ],
        ),
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User berhasil Masuk");
      Navigator.push(context, MaterialPageRoute(builder: (context){return Dashboard();},),);
    } else {
      print("Ada Terjadi Kesalahan");
    }
  }
}
