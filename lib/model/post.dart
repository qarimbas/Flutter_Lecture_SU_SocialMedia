class Post {
  late String text;
  late String date;
  int likes = 0;
  int? comments;

  Post.comments({this.comments});
  Post(
      {required this.text,
      required this.date,
      required this.likes,
      this.comments});
  Post.copyFrom(Post item) {
    this.text = item.text;
    this.date = item.date;
    this.likes = item.likes;
    this.comments = item.comments;
  }

  String toString() =>
      'Post text: $text\nPost date: $date\nPost likes: $likes\nPost comments: $comments';
}
