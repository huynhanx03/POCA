
class TopicService {
  TopicService._privateConstructor();
  static final TopicService _instance = TopicService._privateConstructor();

  static TopicService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createTopic(String? Name) {
    if (Name == null || Name.isEmpty)
      return false;

    return true;
  }

  bool editTopic(String? ID, String? Name)
  {
    if (Name == null || Name.isEmpty)
      return false;

    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }

  bool deleteTopic(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}