import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/core/api_client.dart';
import 'package:movies_app/domain/models/movie_model.dart';
import 'package:movies_app/domain/models/movies_response_model.dart';

import '../../core/api_constants.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
}

class MovieRemoteDataSourceIml extends MovieRemoteDataSource {
  final ApiClient _client;

  MovieRemoteDataSourceIml(this._client);
  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get('trending/movie/day');
    return MoviesResultModel.fromJson(response).movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = _client.get('movie/popular');
    print(response);
    return MoviesResultModel.fromJson(response).movies;
  }
}
