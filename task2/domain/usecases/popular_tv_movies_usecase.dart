import 'package:adv_flutter_tasks/domain/entities/on_the_air_tv_movies.dart';
import 'package:adv_flutter_tasks/domain/repositories/base_tv_movie_repository.dart';

class PopularTvMoviesUseCase {
  final BaseTvMoviesRepository baseTvMoviesRepository;
  PopularTvMoviesUseCase(this.baseTvMoviesRepository);

  Future<List<TvMoviesEntity>> execute() async {
    return await baseTvMoviesRepository.getPopularTvMovies();
  }
}
