// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/screen/dashboard_screen.dart';
import 'package:tugas_akhir/screen/editprofile_screen.dart';
import 'package:tugas_akhir/screen/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(184, 255, 249, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Dashboard();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text(
          "Profile",
          style: TextStyle(
              fontFamily: "K2D", fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/Profilepage.png",
              height: size.height, width: size.width, fit: BoxFit.cover),
          Column(
            children: [
              SizedBox(
                height: 250,
                width: size.width,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        height: 150,
                        width: 150,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 250,
                  width: size.width,
                  child: SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(350, 40),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return EditProfileScreen();
                                  },
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      fontFamily: "K2D",
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_right_rounded)
                              ],
                            )),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(350, 40),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreen();
                                  },
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontFamily: "K2D",
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_right_rounded)
                              ],
                            )),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
