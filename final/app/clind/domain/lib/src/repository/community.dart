import 'package:domain/domain.dart';

abstract class ICommunityRepository {
  Future<List<ChannelEntity>> getChannels();

  Future<List<ChannelEntity>> getPopularChannels();

  Future<List<PostEntity>> getPosts({
    int take,
    int page,
  });
}
