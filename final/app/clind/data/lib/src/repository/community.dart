import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CommunityRepository implements ICommunityRepository {
  final CommunityDataSource _communityDataSource;

  CommunityRepository(this._communityDataSource);

  @override
  Future<List<ChannelEntity>> getChannels() async {
    final List<dynamic> jsonList = await _communityDataSource.getChannels();
    final List<ChannelModel> models = jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<ChannelEntity>> getPopularChannels() async {
    final List<dynamic> jsonList = await _communityDataSource.getPopularChannels();
    final List<ChannelModel> models = jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<PostEntity>> getPosts({
    int take = 10,
    int page = 0,
  }) async {
    final List<dynamic> jsonList = await _communityDataSource.getPosts(
      take: take,
      page: page,
    );
    final List<PostModel> models = jsonList.map((json) => PostModel.fromJson(json)).toList();
    return models.map((e) => e.toEntity()).toList();
  }
}

extension on ChannelModel {
  ChannelEntity toEntity() {
    return ChannelEntity(
      id: id,
      imageUrl: imageUrl,
      name: name,
      followCount: followCount,
    );
  }
}

extension on PostModel {
  PostEntity toEntity() {
    return PostEntity(
      id: id,
      imageUrl: imageUrl,
      channel: channel,
      company: company,
      title: title,
      content: content,
      thumbnailUrls: thumbnailUrls,
      isLike: isLike,
      likeCount: likeCount,
      commentCount: commentCount,
      viewCount: viewCount,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
    );
  }
}
