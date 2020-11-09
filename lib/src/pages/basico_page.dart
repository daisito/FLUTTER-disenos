import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
      ],
          ),
    ));
  }

  Widget _crearImagen() {
    return Container(
          child: Image(
        width: double.infinity,
        image: NetworkImage(
            'https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg'),
            height: 250.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con agua blanca',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Playa Oculta',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
   
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
       _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me, 'ROUTE'),
       _accion(Icons.share, 'SHARE'),
     ],
   );
 }

 Widget _accion(IconData icon, String texto){
   return Column(
         children: <Widget>[
           Icon(icon, color: Colors.blue, size: 40.0),
           SizedBox(height: 5.0,),
           Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.black), ),
         ],
       );
 }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Quis culpa Lorem laborum cillum. Quis ea consequat occaecat dolore nisi et aliqua non aliqua incididunt irure proident. Occaecat aute est quis aliqua non eu proident. Consectetur deserunt quis Lorem quis quis ea occaecat.',
          textAlign: TextAlign.justify,
          ),
      ),
    );
  }


}
