import 'package:flutter/foundation.dart';
import 'package:practica_flutter/models/pelicula.model.dart';
import 'package:practica_flutter/services/pelicula.service.dart';

class PeliculaViewModel extends ChangeNotifier {
  // Corregido: PeliculasServies -> PeliculaService
  final PeliculaService _peliculasService = PeliculaService();

  List<Pelicula> _peliculas = [];
  bool _cargando = false;

  List<Pelicula> get peliculas => _peliculas;
  bool get cargando => _cargando;

  Future<void> fecthPeliculas() async {
    _cargando = true;
    notifyListeners();
    _peliculas = await _peliculasService.fetchPeliculas();
    _cargando = false;
    notifyListeners();
  }
}