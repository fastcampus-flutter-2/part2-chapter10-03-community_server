class PostEntity {
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
  final DateTime createdAt;

  const PostEntity({
    required this.id,
    required this.imageUrl,
    required this.channel,
    required this.company,
    required this.title,
    required this.content,
    required this.thumbnailUrls,
    required this.isLike,
    required this.likeCount,
    required this.commentCount,
    required this.viewCount,
    required this.createdAt,
  });
}
