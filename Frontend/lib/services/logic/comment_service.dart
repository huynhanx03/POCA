
class CommentService {
  CommentService._privateConstructor();
  static final CommentService _instance = CommentService._privateConstructor();

  static CommentService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createComment(String? PodcastID, String? UserID, String? Content, int rate) {
    if (PodcastID == null || PodcastID.isEmpty)
      return false;

    if (UserID == null || UserID.isEmpty)
      return false;

    if (Content == null || Content.isEmpty)
      return false;
    
    if (rate > 5 || rate < 1)
      return false;

    if (PodcastID != IDCorrect)
      return false;

    if (UserID != IDCorrect)
      return false;

    return true;
  }

  bool deleteComment(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}