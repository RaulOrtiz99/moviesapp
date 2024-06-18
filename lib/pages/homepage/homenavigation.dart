import 'package:flutter/material.dart';
import '../favoritospage/favoritospage.dart';
import 'package:moviesapp/pages/homepage/homepage.dart';



class Homenavigation extends StatefulWidget {
  const Homenavigation({super.key});

  @override
  State<Homenavigation> createState() => _HomenavigationState();
}

class _HomenavigationState extends State<Homenavigation> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(86, 18, 110, 186),
      bottomNavigationBar: Container(

        decoration: BoxDecoration(
          color: Color.fromARGB(86, 23, 120, 198),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: NavigationBar(

          backgroundColor:  Color.fromARGB(86, 18, 110, 186),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.white,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(

              selectedIcon: Icon(Icons.home,color: Colors.blueGrey,),
              icon: Icon(Icons.home_outlined,color: Colors.grey,),
              label: 'Home',
            ),
            NavigationDestination(

              icon: Badge(child: Icon(Icons.favorite,color: Colors.grey,)),
              label: 'Mis favoritos',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.file_download_outlined,color: Colors.grey,),
              ),
              label: 'Descargas',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.person,color: Colors.grey,),
              ),
              label: 'Mi perfil',
            ),
          ],
        ),
      ),
      body: <Widget>[
        /// Home page
          Homepage(),

        /// Notifications page
      FavoritosPage(),
        Container(
          child: Center(child: Text("Descargas"),),
        ),
        Container(
          child: Center(child: Text("Perfil"),),
        ),

      ][currentPageIndex],
    );
  }
}
