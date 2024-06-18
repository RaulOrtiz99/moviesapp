import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:moviesapp/pages/detailmoviepage/detailmoviepage.dart';

// ignore_for_file: prefer_const_constructors
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List list = [
    "Jhon Wick",
    "Spiderman",
    "Batman",
    "Crepusculo",
  ];
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
      body: SingleChildScrollView(
        child: ShowUpAnimation(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              GFSearchBar(
                searchBoxInputDecoration: InputDecoration(
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
                    color: Colors.blueGrey,
                  ),
                  hintText: 'Buscar...',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                searchList: list,
                searchQueryBuilder: (query, list) {
                  return list
                      .where((item) =>
                          item.toLowerCase().contains(query.toLowerCase()))
                      .toList();
                },
                overlaySearchListItemBuilder: (item) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      item,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                },
                onItemSelected: (item) {
                  setState(() {
                    print('$item');
                  });
                },
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextField(
              //     autofocus: true,
              //     cursorColor: Colors.white,
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(
              //           color: Colors.white,
              //         ),
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(30),
              //         ),
              //       ),
              //       prefixIcon: Icon(
              //         Icons.search,
              //         color: Colors.white,
              //       ),
              //       suffixIcon: Icon(Icons.settings, color: Colors.white),
              //       focusColor: Colors.white,
              //       fillColor: Colors.white,
              //       labelText: "Buscar peliculas...",
              //       labelStyle: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
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
                        modal(context);
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailMoviePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/deadpool.jpg",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/madmax.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/misionimposible.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/deadpool.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/deadpool.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> modal(BuildContext context) {
    return showModalBottomSheet(
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
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Deadpool 2'),
          content: Text(
              'Deadpool es una pelicula protagonizada por Ryan Reynolds....'),
          actions: <Widget>[
            TextButton(
              child: Text('Volver'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
          ],
        );
      },
    );
  }
}
