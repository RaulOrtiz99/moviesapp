class Movie {
  final String title;
  final String director;
  final int year;
  final String gender;
  final double rating;

  Movie({
    required this.title,
    required this.director,
    required this.year,
    required this.gender,
    required this.rating,
  });
}
List<Movie> movies = [
  Movie(title: 'The Shawshank Redemption', director: 'Frank Darabont', year: 1994, gender: 'Drama', rating: 9.3),
  Movie(title: 'The Godfather', director: 'Francis Ford Coppola', year: 1972, gender: 'Crime', rating: 9.2),
  Movie(title: 'The Dark Knight', director: 'Christopher Nolan', year: 2008, gender: 'Action', rating: 9.0),
  Movie(title: '12 Angry Men', director: 'Sidney Lumet', year: 1957, gender: 'Drama', rating: 8.9),
  Movie(title: 'Schindler\'s List', director: 'Steven Spielberg', year: 1993, gender: 'Biography', rating: 8.9),

];

