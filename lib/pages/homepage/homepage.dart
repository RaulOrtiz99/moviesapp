import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(86, 18, 110, 186),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
        backgroundColor: Color.fromARGB(86, 18, 110, 186),
        elevation: 0.1,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              autofocus: true,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.settings, color: Colors.white),
                focusColor: Colors.white,
                fillColor: Colors.white,
                labelText: "Buscar peliculas...",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              widthFactor: 50,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Nueva reproduccion",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/jhonwick.jpg",
                  ),
                  fit: BoxFit.cover,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "HD",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Text(
                                "HD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("Reproducir en Ingles"),
                                  subtitle: Text("Con subtitulos en espaniol"),
                                  trailing: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.green,
                                  ),
                                ),
                                ListTile(
                                  title: Text("Reproducir en espaniol"),
                                  subtitle: Text("Latino"),
                                  trailing: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.green,
                                  ),
                                ),
                                ListTile(
                                  title: Text("Reproducir en espaniol"),
                                  subtitle: Text("Espania"),
                                  trailing: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Center(
                    child: Icon(
                      Icons.play_circle_filled,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tendencias",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Ver todo...",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),

       SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(20),
        child: Row(
         
          children: [
          
          Container(
                width: 150,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Container(
                width: 150,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(width: 20,),
              Container(
                width: 150,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(width: 20,),
              Container(
                width: 150,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(width: 20,),
              Container(
                width: 150,
                height: 200,
                color: Colors.red,
              ),
        ],),
       ),




        ],
      ),
    );
  }
}
