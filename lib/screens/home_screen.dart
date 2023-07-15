import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        //* AppBar
        appBar: AppBar(
          title: Text('Hola mundo $currentPage!'),
          elevation: 0,
        ),
        body: PageView(
          children: [
            CustomScreen(color: Colors.blue),
            CustomScreen(color: Colors.red),
            CustomScreen(color: Colors.green),
          ],
        ),

        //* Tabs
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) {
            setState(() {
              currentPage = index;
            });
          },
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'
            ),
          ],
        )
      );
  }
}

class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({ required this.color });

  @override
  Widget build(BuildContext context){
    return Container(
      color: color,
      child: Center(
        child: Text('Bienvenido a mi app!'),
      ),
    );
  }
}