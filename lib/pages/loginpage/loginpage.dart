import 'package:flutter/material.dart';
import 'package:moviesapp/pages/homepage/homenavigation.dart';
import 'package:moviesapp/pages/homepage/homepage.dart';
import 'package:moviesapp/pages/homepage/homepage2.dart';
import 'package:show_up_animation/show_up_animation.dart';
// ignore_for_file: prefer_const_constructors
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(86, 18, 110, 186),
      body: ShowUpAnimation(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bienvenido de nuevo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Por favor ingrese con su cuenta",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Iniciar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()));
                      },
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        labelText: "Correo",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        labelText: "Contrasenia",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Homenavigation()));
                  },
                  child: Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(86, 18, 110, 186),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      color: Colors.white,
                      height: 10,
                    ),
                    Text("O registrarse con",
                        style: TextStyle(color: Colors.white)),
                    Divider(
                      color: Colors.white,
                    )
                  ],
                ),
            SizedBox(height: 20,),
                    
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(86, 18, 110, 186),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/googlelogo.png',
                              height: 50,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(86, 18, 110, 186),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/applelogo.png',
                              height: 50,
                            ),
                            Text(
                              "Apple",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(86, 18, 110, 186),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/facebooklogo.png',
                              height: 50,
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "¿No tienes una cuenta?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){
        
                      },
                      child: Text(
                        "Registrate",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}