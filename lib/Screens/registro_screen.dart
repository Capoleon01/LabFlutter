import 'package:capo_store/Widget/custom_input_field.dart';
import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de usuario"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Form(
                    child: Column(
                  children: [
                    _nombreCompleto(),
                    const SizedBox(),
                    _usuario(),
                    const SizedBox(),
                    _contrasena(),
                    const SizedBox(),
                    _verificacionContrasena(),
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _nombreCompleto() {
  return CustomInputField(
    hintText: 'Nombre Completo',
    labelText: 'Nombre Completo del Usuario',
    colorLabeltext: Colors.black,
    icon: Icons.person,
    colorIcons: const Color.fromARGB(255, 215, 118, 57),
    colorBorde: Colors.white,
    mensajeIf: 'Por favor de poner el nombre completo del usuario',
    tipoVariable: "",
    onValueChanged: (value) {
      // setState(() {
      //  personal.nombreCompleto = value;
      // });
    },
  );
}

Widget _usuario() {
  return CustomInputField(
      hintText: 'Usuario',
      labelText: 'El usuario que pondra en el inicio de sesion',
      colorLabeltext: Colors.black,
      icon: Icons.person_pin,
      colorIcons: Colors.green,
      colorBorde: Colors.blue,
      mensajeIf: "Por favor de poner un usuario",
      tipoVariable: "",
      onValueChanged: (value) {});
}

Widget _contrasena() {
  return CustomInputField(
    hintText: 'Constraseña',
    labelText: 'Contraseña',
    obscureText: true,
    icon: Icons.lock_outline,
    colorIcons: Colors.greenAccent,
    colorBorde: Colors.black,
    keyboardType: TextInputType.text,
    colorLabeltext: Colors.white,
    mensajeIf: 'Por favor de  poner una contraseña',
    tipoVariable: '',
    onValueChanged: (value) {},
  );
}

Widget _verificacionContrasena() {
  return CustomInputField(
    hintText: 'Verificacion de Constraseña',
    labelText: 'Verificacion de Contraseña',
    obscureText: true,
    icon: Icons.lock_outline,
    colorIcons: Colors.greenAccent,
    colorBorde: Colors.black,
    keyboardType: TextInputType.text,
    colorLabeltext: Colors.white,
    mensajeIf: 'Por favor de  poner la contraseña que coincida',
    tipoVariable: '',
    onValueChanged: (value) {},
  );
}
