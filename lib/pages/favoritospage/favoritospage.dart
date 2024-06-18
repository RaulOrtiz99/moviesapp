import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_unnecessary_containers

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(86, 18, 110, 186),
        title: Text(
          "Favoritos",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(86, 18, 110, 186),
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(72, 2, 70, 126),
              ),
              height: 180,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/madmax.jpg',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mad Max",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.alarm, color: Colors.white),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "2 hr 50 min",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Accion",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Suspenso",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(72, 2, 70, 126),
              ),
              height: 180,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/madmax.jpg',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mad Max",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.alarm, color: Colors.white),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "2 hr 50 min",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Accion",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Suspenso",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(72, 2, 70, 126),
              ),
              height: 180,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/madmax.jpg',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mad Max",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.calendar_today, color: Colors.white),
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.alarm, color: Colors.white),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "2 hr 50 min",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Accion",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(70, 135, 201, 255),
                            ),
                            child: Center(
                              child: Text(
                                "Suspenso",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(72, 2, 70, 126),
                ),
                height: 180,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/images/madmax.jpg',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mad Max",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.calendar_today, color: Colors.white),
                            Text(
                              "2022",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.calendar_today, color: Colors.white),
                            Text(
                              "2022",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.alarm, color: Colors.white),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "2 hr 50 min",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(70, 135, 201, 255),
                              ),
                              child: Center(
                                child: Text(
                                  "Accion",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(70, 135, 201, 255),
                              ),
                              child: Center(
                                child: Text(
                                  "Suspenso",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(72, 2, 70, 126),
                ),
                height: 180,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/images/madmax.jpg',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mad Max",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.calendar_today, color: Colors.white),
                            Text(
                              "2022",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.calendar_today, color: Colors.white),
                            Text(
                              "2022",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.alarm, color: Colors.white),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "2 hr 50 min",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(70, 135, 201, 255),
                              ),
                              child: Center(
                                child: Text(
                                  "Accion",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(70, 135, 201, 255),
                              ),
                              child: Center(
                                child: Text(
                                  "Suspenso",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
