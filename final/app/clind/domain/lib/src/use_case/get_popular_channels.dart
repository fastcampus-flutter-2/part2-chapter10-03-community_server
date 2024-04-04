import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetPopularChannelsUseCase implements IUseCase<List<ChannelEntity>, void> {
  final ICommunityRepository _communityRepository;

  GetPopularChannelsUseCase(this._communityRepository);

  @override
  Future<List<ChannelEntity>> execute([void params]) {
    return _communityRepository.getPopularChannels();
  }
}
