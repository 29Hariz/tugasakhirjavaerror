import 'package:flutter/material.dart';
import 'package:tugas_akhir/screen/profile_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(184, 255, 249, 1),
        leading: IconButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return ProfileScreen();},),);}, 
          icon: const Icon(Icons.arrow_back_rounded)
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontFamily: "K2D",
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Stack(
        children: [
          Image.asset(
            "assets/images/Profilepage.png",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),

          Column(
            children: [
              SizedBox(
                height: 250,
                width: size.width,
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
              
              SizedBox(
                width: size.width,
                height: 400,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                      height: 20.0,
                      ),
              
                      Center(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(239, 255, 253, 1),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              hintStyle: TextStyle(
                                fontFamily: "K2D",
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 16,
                              ),
                              filled: true, 
                              fillColor: const Color.fromRGBO(239, 255, 253, 1),                         
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
              
                      Center(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(239, 255, 253, 1),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontFamily: "K2D",
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 16,
                              ),
                              filled: true, 
                              fillColor: const Color.fromRGBO(239, 255, 253, 1),                         
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
              
                      Center(
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(239, 255, 253, 1),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "New Password",
                              hintStyle: TextStyle(
                                fontFamily: "K2D",
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 16,
                              ),
                              filled: true, 
                              fillColor: const Color.fromRGBO(239, 255, 253, 1),                         
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
              
                      Center(
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: const Color.fromRGBO(66, 194, 255, 1),
                                foregroundColor: Colors.white,
                              ),
                              onPressed: (){},
                              child: const Text(
                                "Save",
                                style: TextStyle(
                                  fontFamily: "K2D",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          )
        ],
      ),
      )
    );
  }
}
