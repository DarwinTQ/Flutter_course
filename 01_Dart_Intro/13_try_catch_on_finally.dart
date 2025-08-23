import 'dart:async'; // Required for Future.delayed and Future

void main() async{
  print('Inicio de programa');
  try{
      final value =await httpGet('http://carwin-turpo/main');
    print('Exito:$value');
  print(value);

  }  on Exception catch(err){
    
    print('Tenemos una exception $err');
  }
  
  
  catch (err){
    print('OPSS!!! algo terrible paso: $err');
  } finally{
    print('Find del try y catch');
  }
  
  final value =await httpGet('http://carwin-turpo/main');
  print(value);

  print('Fin de programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  
 throw Exception('No hay parametros en el URL');
  
  //throw 'Error en la peticion';
  
  
 // return 'Tenemos un valor de la peticion';
}