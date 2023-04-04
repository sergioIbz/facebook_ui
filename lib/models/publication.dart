class Publication {
  final User user;
  final String title;
  final DateTime createAt;
  final String imageUrl;
  final int commentsCount;
  final int sheresCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sheresCount,
    required this.currentUserReaction,
  });
}

class User {
  final String avatar;
  final String userName;

  User({
    required this.avatar,
    required this.userName,
  });
}

enum Reaction {
  angry,
  heart,
  laughing,
  like,
  sad,
  shocked,
}
