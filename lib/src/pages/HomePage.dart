import 'package:componentes/src/pages/AlertPage.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(' builder');
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];


    data.forEach( (opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']), //Leo desde icono_string_util
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          //Push a una pagina disponible en mis rutas
          Navigator.pushNamed(context,opt['ruta']);

        },
      );

      opciones
        ..add(widgetTemp)
        ..add(Divider(
          height: 30,
          thickness: 1,
          color: Colors.cyanAccent,
        ));
    });

    return opciones;
  }
}
