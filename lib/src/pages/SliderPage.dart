import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  SliderPageState createState() => SliderPageState();
}

class SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.00;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo[300],
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,

      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkBox() {
    /*return Checkbox(

      value:_bloquearCheck,

      onChanged: (valor){
        setState(() {
          _bloquearCheck=valor;
        });
        
      },
    );*/

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch(){

    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

  }
  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i0.wp.com/culturageek.com.ar/wp-content/uploads/2016/12/adventuretime.0-copy.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
