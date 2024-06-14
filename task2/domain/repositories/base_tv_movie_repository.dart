import 'package:adv_flutter_tasks/domain/entities/on_the_air_tv_movies.dart';

abstract class BaseTvMoviesRepository {
  Future<List<TvMoviesEntity>> getOnTheAirTvMovies();
  Future<List<TvMoviesEntity>> getPopularTvMovies();
  Future<List<TvMoviesEntity>> getTopRatedTvMovies();
}
