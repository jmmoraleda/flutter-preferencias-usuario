import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario { // Clase para centralizar el tratamiento de las preferencias de estados de los usuarios.

  // Implementamos el patrón singleton para que siempre tengamos una sola instancia
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia; // Cuando se haga un new PreferenciasUsuarios se devolverá siempre la misma instancia.
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async { // Inicializamos las preferencias
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET del Genero
  get genero {
    return _prefs.getInt('genero') ?? 1; // La doble interrogación es que, si no existe el género, por defecto la ponemos a 1.
  }

  set genero( int value ) {
    _prefs.setInt('genero', value);
  }

  // GET y SET del _colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario( bool value ) {
    _prefs.setBool('colorSecundario', value);
  }


  // GET y SET del nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario( String value ) {
    _prefs.setString('nombreUsuario', value);
  }

    // GET y SET de la última página
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina( String value ) {
    _prefs.setString('ultimaPagina', value);
  }

}


