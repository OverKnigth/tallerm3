import 'package:flutter/material.dart';
import 'package:taller_0012/screens/screen2.dart';
import 'package:taller_0012/screens/screen3.dart';

void main() {
  runApp(Taller());
}

class Taller extends StatelessWidget {
  const Taller({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bienvenido a MAX",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color.fromRGBO(10, 12, 164, 2),
      ),
      // drawer: MiDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.network(
            "https://img.freepik.com/fotos-premium/fondo-liso-plano-varios-colores_599236-109.jpg",
            fit: BoxFit.cover,
          )),
          Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Disfruta del mejor catalogo de series y peliculas",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('"Es más de lo que imaginabas"',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center),
              ),
              imgL(),
              login_btn(context),
              register_btn(context),
            ]),
          )
        ],
      ),
    );
  }
}

Widget login_btn(context) {
  return ElevatedButton.icon(
      onPressed: () => navegar2(context),
      label: Text("Iniciar Sesion"),
      icon: Icon(Icons.login_outlined));
}

Widget register_btn(context) {
  return ElevatedButton.icon(
      onPressed: () => navegar3(context),
      label: Text("Registrate"),
      icon: Icon(Icons.app_registration_rounded));
}

void navegar2(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
}

void navegar3(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()));
}

Widget imgL() {
  return Image.asset("assets/images/hbo.png", width: 300, height: 300);
}
