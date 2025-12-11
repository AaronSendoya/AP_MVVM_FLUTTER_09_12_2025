import '../models/pelicula.model.dart';

class PeliculaService {
  Future<List<Pelicula>> fetchPeliculas() async {
    // Simula una llamada a una API o base de datos
    await Future.delayed(const Duration(seconds: 2)); // Simula tiempo de espera
    return [
      Pelicula("La sociedad de la nieve", "J.A. Bayona", "Drama", 2023),
      Pelicula("Un vecino gruñon", "Nicholas Stoller", "Comedia", 2022),
      Pelicula("La viuda negra", "Catherine Hardwicke", "Crimen", 2025),
    ];
  }
}