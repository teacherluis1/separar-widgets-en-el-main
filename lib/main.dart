import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: cuerpo()
      ),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3052361/pexels-photo-3052361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      ),
      fit: BoxFit.cover

      ),
    ), 
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campoUsuario(),
          campoContrasena(),
          SizedBox(height: 15,),
          botonEntrar(),
        ],
      )
      ),
  );

}

Widget nombre() {
  return Text("Sign in",
  style: TextStyle(
    color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold
  ),);
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return TextButton(
    
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10)
      
    ),
  child: Text("Enter",
  style: TextStyle(
    fontSize: 25, color: Colors.white
  ),
  )
  );
}