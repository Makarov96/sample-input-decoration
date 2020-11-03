import 'package:flutter/material.dart';
import 'package:sample/widgets/custom_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nombre = new TextEditingController();
  var apellido = new TextEditingController();
  var estado = new TextEditingController();
  @override
  void dispose() {
    nombre.dispose();
    apellido.dispose();
    estado.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInput(
              hintText: 'Nombre',
              textEditingController: nombre,
            ),
            CustomInput(
              hintText: 'Apellido',
              textEditingController: apellido,
            ),
            CustomInput(
              hintText: 'Estado',
              textEditingController: estado,
            ),
            SizedBox(
              height: 80.0,
            ),
            MaterialButton(
              minWidth: 200,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              focusElevation: 50,
              onPressed: () {
                print('sdfsdfs');
                print('${nombre.text} ${apellido.text} ${estado.text}');

                //Con la funcion clear limpialos los textos
                nombre.clear();
                apellido.clear();
                estado.clear();
              },
              child: Text(
                'Generar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
