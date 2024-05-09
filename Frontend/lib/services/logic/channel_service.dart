
import 'package:poca/models/topic.dart';

class ChannelService {
  ChannelService._privateConstructor();
  static final ChannelService _instance = ChannelService._privateConstructor();

  static ChannelService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createChannel(String? Name, String? About, String? UserID, List<Topic>? Topic) {
    if (Name == null || Name.isEmpty)
      return false;

    if (About == null || About.isEmpty)
      return false;

    if (UserID == null || UserID.isEmpty)
      return false;

    if (Topic == null || Topic.length == 0)
      return false;
    
    if (UserID != IDCorrect)
      return false;

    return true;
  }

  bool editChannel(String? ID  , String? Name, String? About, String? UserID, List<Topic>? Topic) {
    if (ID == null || ID.isEmpty)
      return false;
    
    if (Name == null || Name.isEmpty)
      return false;

    if (About == null || About.isEmpty)
      return false;

    if (UserID == null || UserID.isEmpty)
      return false;

    if (Topic == null || Topic.length == 0)
      return false;

    if (UserID != IDCorrect)
      return false;

    return ID == IDCorrect;
  }

  bool deleteChannel(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}