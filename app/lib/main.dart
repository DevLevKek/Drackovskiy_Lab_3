// import 'dart:math';

import 'package:flutter/material.dart';
import 'main_store.dart';
import 'register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/register': (context) => const register(),
        '/main_store': (context) => const main_store(),
      },
    ),
  );

  //const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
        children: [
          Image.asset('lib/assets/img/Group 15.jpg'),
          Center(
            child: Container(
              height: 410,
              width: 370,
              //drop shadow
              decoration: BoxDecoration(
                  color: const Color.fromARGB(193, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(50, 0, 0, 0),
                        blurRadius: 47,
                        spreadRadius: 0.1,
                        blurStyle: BlurStyle.normal),
                  ]),
              //Hello
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello !",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color.fromARGB(225, 8, 132, 249)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  //Login
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(161, 255, 255, 255),
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(250, 80, 173, 255)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Login",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 133, 195, 252))),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  //Password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(193, 255, 255, 255),
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(250, 80, 173, 255)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 133, 195, 252))),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //button
                  const SizedBox(
                    height: 24,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 60,
                      width: 1000,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 5, 134, 255),
                              Color.fromARGB(255, 92, 172, 246)
                            ]),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MaterialButton(
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              color: Color.fromARGB(224, 254, 254, 254)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/main_store');
                        },
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color.fromARGB(223, 0, 0, 0)),
                  ),

                  const SizedBox(
                    height: 2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      "Sing up",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 5, 134, 255)),
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
      ),
    );
  }
}
