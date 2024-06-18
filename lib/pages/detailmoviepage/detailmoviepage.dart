import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:show_up_animation/show_up_animation.dart';
// ignore_for_file: prefer_const_constructors

class DetailMoviePage extends StatefulWidget {
  const DetailMoviePage({super.key});

  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(86, 18, 110, 186),
      body: ShowUpAnimation(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/jhonwick.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(Icons.notifications, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 33, 17),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ver ahora",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.play_arrow_rounded,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 33, 17),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Descargar",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Jhon Wick: Capitulo 4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Accion",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Thriller",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Suspenso",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.alarm_on,
                          color: Colors.white,
                        ),
                        Text(
                          "2hr 50 min",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 136, 146),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ver trailer",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.play_arrow_rounded,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onDoubleTap: () {
                            _showMyDialog();
                          },
                          onTap: () {
                            modal(context);
                          },
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 136, 146),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Agregar a favoritos",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Detalles",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        runSpacing: 10,
                        spacing: 30,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pais:",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Genero:",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Fecha de lanzamiento:",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Produccion:",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Estados Unidos",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Accion,Suspenso",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Mayo 2025",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "AMC Studios",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Actores",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ8qpiVrthJOtOckTNcSG9-MCfchJDe4CKfd06QcjEZuZAONND0"),
                          shape: GFAvatarShape.circle,
                        ),
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQFtYdVaQlia2kjwkUL5JFD-aIlrgqAVaqEHo4PzwvX6dxTE4RI"),
                          shape: GFAvatarShape.circle,
                        ),
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.mubicdn.net/images/cast_member/67837/cache-211503-1490770733/image-w856.jpg"),
                          shape: GFAvatarShape.circle,
                        ),
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://www.rollingstone.com/wp-content/uploads/2021/02/TFT_IAN-MCSHANE_blank-THUMB.jpg?w=910&h=511&crop=1"),
                          shape: GFAvatarShape.circle,
                        ),
                      ],
                    )
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
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Agregaste la pelicula a favoritos",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Image.asset(
                    'assets/images/comprobado.png',
                    height: 100,
                  )
                ],
              ),
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
