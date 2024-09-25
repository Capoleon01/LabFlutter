import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CRUD',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.mode_edit_outlined,
                color: Colors.blueGrey.shade700,
              ),
              title: const Text('Registro'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.library_books,
                color: Colors.blueGrey.shade700,
              ),
              title: const Text('Consulta'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.edit_note,
                color: Colors.blueGrey.shade700,
              ),
              title: const Text('Modificacion'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.blueGrey.shade700,
              ),
              title: const Text('Eliminacion'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
