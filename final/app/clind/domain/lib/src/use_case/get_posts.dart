import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetPostsUseCase implements IUseCase<List<PostEntity>, GetPostsParams> {
  final ICommunityRepository _communityRepository;

  GetPostsUseCase(this._communityRepository);

  @override
  Future<List<PostEntity>> execute([GetPostsParams? params]) {
    final GetPostsParams input = params ?? GetPostsParams();
    return _communityRepository.getPosts(
      take: input.take,
      page: input.page,
    );
  }
}

class GetPostsParams {
  final int take;
  final int page;

  GetPostsParams({
    this.take = 10,
    this.page = 0,
  });
}
