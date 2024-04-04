class PostModel {
  final String id;
  final String imageUrl;
  final String channel;
  final String company;
  final String title;
  final String content;
  final List<String> thumbnailUrls;
  final bool isLike;
  final int likeCount;
  final int commentCount;
  final int viewCount;
  final int createdAt;

  const PostModel({
    this.id = '',
    this.imageUrl = '',
    this.channel = '',
    this.company = '',
    this.title = '',
    this.content = '',
    this.thumbnailUrls = const [],
    this.isLike = false,
    this.likeCount = 0,
    this.commentCount = 0,
    this.viewCount = 0,
    this.createdAt = 0,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      channel: json['channel'] as String? ?? '',
      company: json['company'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      thumbnailUrls: (json['thumbnailUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      isLike: json['isLike'] as bool? ?? false,
      likeCount: json['likeCount'] as int? ?? 0,
      commentCount: json['commentCount'] as int? ?? 0,
      viewCount: json['viewCount'] as int? ?? 0,
      createdAt: json['createdAt'] as int? ?? 0,
    );
  }
}
