import 'package:flutter_test/flutter_test.dart';
import 'package:poca/services/logic/Playlist_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
const String UserID = "UserID";
const String UserIDEmpty = "";
const String UserIDCorrect = "IDCorrect";
const String Name = "Name";
const String NameEmpty = "";
const String Description = "Description";
const String DescriptionEmpty = "";

void main() {
  group('Playlist service - ', () {
    group('Create playlist - ', () {
      test('Name is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .createPlaylist(NameEmpty, Description, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .createPlaylist(Name, DescriptionEmpty, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('UserID is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .createPlaylist(Name, Description, UserIDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('UserID is not exist', () async {
        // ACT
        final result = PlaylistService.instance
            .createPlaylist(Name, Description, UserID);

        // ASSERT
        expect(result, false);
      });

      test('Create a Playlist success', () async {
        // ACT
        final result = PlaylistService.instance
            .createPlaylist(Name, Description, UserIDCorrect);

        // ASSERT
        expect(result, true);
      });
    });

    group('Edit playlist - ', () {
      test('ID is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDEmpty, Name, Description, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(ID, Name, Description, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('Name is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDCorrect, NameEmpty, Description, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDCorrect, Name, DescriptionEmpty, UserIDCorrect);

        // ASSERT
        expect(result, false);
      });

      test('UserID is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDCorrect, Name, Description, UserIDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('UserID is not exist', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDCorrect, Name, Description, UserID);

        // ASSERT
        expect(result, false);
      });

      test('Create a playlist success', () async {
        // ACT
        final result = PlaylistService.instance
            .editPlaylist(IDCorrect, Name, Description, UserIDCorrect);

        // ASSERT
        expect(result, true);
      });
    });

    group('Delete playlist - ', () {
      test('ID is empty', () async {
        // ACT
        final result = PlaylistService.instance
            .deletePlaylist(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = PlaylistService.instance
            .deletePlaylist(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a playlist success', () async {
        // ACT
        final result = PlaylistService.instance
            .deletePlaylist(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
