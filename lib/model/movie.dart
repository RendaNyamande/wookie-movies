class Movie {
  final String title;
  final double rating;
  final String releaseDate;
  final String length;
  final String director;
  final List<String> cast;
  final List<String> overview;
  final String backdrop;

  Movie({
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.length,
    required this.director,
    required this.cast,
    required this.overview,
    required this.backdrop
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'],
      rating: map['imdb_rating'],
      releaseDate: map['released_on'],
      length: map['length'],
      director: map['director'],
      cast: map['cast'],
      overview: map['overview'],
      backdrop: map['backdrop'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'rating': rating,
      'releaseDate': releaseDate,
      'length': length,
      'director': director,
      'cast': cast,
      'overview': overview,
      'backdrop': backdrop,
    };
  }
}