import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        character: cast.character,
        profilePath: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : 'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found.jpg',
      );
}
