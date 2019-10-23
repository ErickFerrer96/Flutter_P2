import 'package:componentes/src/pages/AnimatedContainerPage.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/InputPage.dart';
import 'package:componentes/src/pages/SliderPage.dart';
import 'package:componentes/src/pages/CardPage.dart';
import 'package:componentes/src/pages/AlertPage.dart';
import 'package:componentes/src/pages/AvatarPage.dart';
import 'package:componentes/src/pages/HomePage.dart';
import 'package:componentes/src/pages/ListviewPage.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

 return <String, WidgetBuilder> {

        //Rutas disponibles de la aplicacion
        '/' :(BuildContext context) => HomePage(),
        'alert' :(BuildContext context) => AlertPage(),
        'avatar' :(BuildContext context) => AvatarPage(),
        'card' :(BuildContext context) => CardPage(),
        'animatedContainer' :(BuildContext context) => AnimatedContainerPage(),
        'inputs' :(BuildContext context) => InputPage(),
        'slider' :(BuildContext context) => SliderPage(),
        'list' :(BuildContext context) => ListaPage(),
  }; 
}