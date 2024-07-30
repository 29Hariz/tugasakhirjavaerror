import 'package:flutter/material.dart';
import 'package:tugas_akhir/screen/profile_screen.dart';
import 'package:tugas_akhir/widget/fanwidget.dart';
import 'package:tugas_akhir/widget/roofwidget.dart';
import 'package:tugas_akhir/widget/switch.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Image.asset(
            "assets/images/Dashboard.png",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          
          SafeArea(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 75,
                            width: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left:15),
                                  child: 
                                    Text(
                                      "Hi, Hariz!",
                                      style: TextStyle(
                                        fontFamily: "K2D",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                ),
                                
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: 
                                    Text(
                                      "Tembalang, Central Java",
                                      style: TextStyle(
                                        fontFamily: "K2D",
                                        fontSize: 12,
                                        color: Colors.black45
                                      ),
                                    ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: ElevatedButton(
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return ProfileScreen();},),);},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(1),
                                  minimumSize: const Size(50, 50),
                                  backgroundColor: const Color.fromRGBO(184, 255, 249, 1),
                                  elevation: 0,
                                ),
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  height: 40,
                                  width: 40,
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            
                    const SizedBox(
                    height: 50.0,
                    ),
            
                    Stack(
                      children: [
                        Container(
                          height: 151,
                          width: 324,
                          decoration: BoxDecoration(
                            gradient: const SweepGradient(
                              colors: [
                                Color.fromRGBO(133, 244, 255, 1),
                                Color.fromRGBO(184, 255, 249, 1),
                                Color.fromRGBO(66, 194, 255, 1)
                              ],
                              center: Alignment.center,
                              startAngle: 0.0,
                              endAngle: 2*1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4)
                              )
                            ]
                          ),
                        ),
            
                        Column(
                          children: [
                            Container(
                              height: 120,
                              width: 324,
                              decoration: const BoxDecoration(
                                color: Colors.transparent
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 81,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(239, 255, 253, 1),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(11),
                                        topLeft: Radius.circular(11)
                                      )
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Cuaca",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        Image.asset(
                                          "assets/icons/cuaca.png",
                                          height: 30,
                                          width:25,
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        const Text(
                                          "Berawan",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
            
                                  Container(
                                    width: 81,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(239, 255, 253, 1),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Cahaya",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        Image.asset(
                                          "assets/icons/cahaya.png",
                                          height: 30,
                                          width:25,
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        const Text(
                                          "Terang",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
            
                                  Container(
                                    width: 81,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(239, 255, 253, 1),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Suhu",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        Image.asset(
                                          "assets/icons/suhu.png",
                                          height: 30,
                                          width:25,
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        const Text(
                                          "20°",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
            
                                  Container(
                                    width: 81,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(239, 255, 253, 1),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(11),
                                        topRight: Radius.circular(11)
                                      )
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Kelembapan",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        Image.asset(
                                          "assets/icons/kelembapan.png",
                                          height: 30,
                                          width:25,
                                        ),
                                        const SizedBox(height: 15.0),
            
                                        const Text(
                                          "45%",
                                          style: TextStyle(
                                          fontFamily: "K2D",
                                          fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
            
                            SizedBox(
                              height: 31,
                              width: 324,
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "Pengaturan Sistem Otomatis",
                                      style: TextStyle(
                                        fontFamily: "K2D",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                  width: 35.0,
                                  ),
            
                                  SwitchWidget()
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
            
                    const SizedBox(
                    height: 50.0,
                    ),
            
                    Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft, 
                          end:Alignment.bottomRight, 
                          colors:[
                          Color.fromRGBO(184, 255, 249, 1),
                          Color.fromRGBO(239, 255, 253, 1),
                          ]
                        ),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4)
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/fan.png",
                                  height: 70,
                                  width: 70,
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 150,
                            width: 200,
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    SizedBox(
                                      height: 75,
                                      width: 150,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kipas Angin",
                                            style: TextStyle(
                                              fontFamily: "K2D",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                FanWidget()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    const SizedBox(
                    height: 30.0,
                    ),
            
                    Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(184, 255, 249, 1),
                            Color.fromRGBO(239, 255, 253, 1)
                          ]
                        ),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          )
                        ]
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/roof.png",
                                  height: 70,
                                  width: 70,
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 150,
                            width: 200,
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    SizedBox(
                                      height: 75,
                                      width: 150,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Konfigurasi Atap",
                                            style: TextStyle(
                                              fontFamily: "K2D",
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                RoofWidget()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}
