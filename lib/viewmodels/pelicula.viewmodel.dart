import 'package:flutter/foundation.dart';
import 'package:practica_flutter/models/pelicula.model.dart';
import 'package:practica_flutter/services/pelicula.service.dart';

class PeliculaViewModel extends ChangeNotifier {
  final PeliculaService _peliculaService = PeliculaService();
  List<Pelicula> _peliculas = [];
  bool _isLoading = false;
  List<Pelicula> get peliculas => _peliculas;
  bool get isLoading => _isLoading;

  Future<void> fetchPeliculas() async {
    _isLoading = true;
    notifyListeners();
    _peliculas = await _peliculaService.fetchPeliculas();
    _isLoading = false;
    notifyListeners();
  }
}