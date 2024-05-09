import 'package:poca/models/channel_model.dart';
import 'package:poca/models/topic.dart';

class PodcastService {
  PodcastService._privateConstructor();
  static final PodcastService _instance = PodcastService._privateConstructor();

  static PodcastService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createPodcast(String? Title, String? Description, ChannelModel? Channel, List<Topic>? Topic) {
    if (Title == null || Title.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;

    if (Channel == null)
      return false;
    
    if (Topic == null || Topic.length == 0)
      return false;
    
    return true;
  }

  bool editPodcast(String? ID  , String? Title, String? Description, ChannelModel? Channel, List<Topic>? Topic) {
    if (ID == null || ID.isEmpty)
      return false;
    
    if (Title == null || Title.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;

    if (Channel == null)
      return false;
    
    if (Topic == null || Topic.length == 0)
      return false;
    
    return ID == IDCorrect;
  }

  bool deletePodcast(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}