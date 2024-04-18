
class EpisodeService {
  EpisodeService._privateConstructor();
  static final EpisodeService _instance = EpisodeService._privateConstructor();

  static EpisodeService get instance => _instance;

  bool createEpisode(String? Title, String? Description) {
    if (Title == null || Title.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;
    
    return true;
  }

  bool editEpisode(String? ID  , String? Title, String? Description) {
    if (ID == null || ID.isEmpty)
      return false;
    
    if (Title == null || Title.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;

    return true;
  }
}