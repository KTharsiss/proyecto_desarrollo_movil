import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Proyecto ',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(body: MyHomeLoginApp())
    );
  }
}

class MyHomeLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Form(
      child: Column(
          children:<Widget>[
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Correo Institucional'
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Contraseña'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 120),
              child: ElevatedButton(onPressed: (){},child: Text('Iniciar Sesión'),),
            )
          ]
      ),
    );
  }
}