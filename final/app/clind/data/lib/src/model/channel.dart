class ChannelModel {
  final String id;
  final String imageUrl;
  final String name;
  final int followCount;

  const ChannelModel({
    this.id = '',
    this.imageUrl = '',
    this.name = '',
    this.followCount = 0,
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) {
    return ChannelModel(
      id: json['id'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      name: json['name'] as String? ?? '',
      followCount: json['followCount'] as int? ?? 0,
    );
  }
}
