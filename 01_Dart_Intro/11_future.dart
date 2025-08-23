void main(){
  print('Inicio de programa');

  httpGet('http://carwin-turpo/main').then(
    (value){
      print(value);
    }).catchError((err) { // Corrected syntax for catchError callback
      print('Error: $err');
    }); // Added missing semicolon to terminate the expression


  print('Fin de programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion http';

    //return 'Respuesta de la peticion http';
  });
}