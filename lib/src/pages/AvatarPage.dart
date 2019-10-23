import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
        Container(

        padding: EdgeInsets.all(5.0), 
        child: CircleAvatar(

          backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/41bC-%2BNFUEL._SY355_.jpg'),
          radius: 30.0,
          ), 
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('hola'),
            backgroundColor: Colors.red[200],
          )
        )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://juicebubble.co.za/wp-content/uploads/2018/03/Adventure-Time-Finn-white-400x400.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
      ),
      ),
    );
  }
}