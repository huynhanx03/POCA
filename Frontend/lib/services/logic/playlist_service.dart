
class PlaylistService {
  PlaylistService._privateConstructor();
  static final PlaylistService _instance = PlaylistService._privateConstructor();

  static PlaylistService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createPlaylist(String? Name, String? Description, String? UserID) {
    if (Name == null || Name.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;

    if (UserID == null || UserID.isEmpty)
      return false;
    
    if (UserID != IDCorrect)
      return false;

    return true;
  }

  bool editPlaylist(String? ID  , String? Name, String? Description, String? UserID) {
    if (ID == null || ID.isEmpty)
      return false;
    
    if (Name == null || Name.isEmpty)
      return false;

    if (Description == null || Description.isEmpty)
      return false;

    if (UserID == null || UserID.isEmpty)
      return false;

    if (UserID != IDCorrect)
      return false;

    return ID == IDCorrect;
  }

  bool deletePlaylist(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}