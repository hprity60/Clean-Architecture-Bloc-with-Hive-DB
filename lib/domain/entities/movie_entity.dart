import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final num voteAverage;
  final String releaseDate;
  final String overview;
 const MovieEntity({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
    required this.overview,
  });

  @override
  List<Object> get props {
    return [
      posterPath,
      id,
      backdropPath,
      title,
      voteAverage,
      releaseDate,
      overview,
    ];
  }

  @override
  bool get stringify => true;
}
