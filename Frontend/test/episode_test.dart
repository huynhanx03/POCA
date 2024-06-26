import 'package:flutter_test/flutter_test.dart';
import 'package:poca/services/logic/episode_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
const String Title = "Title";
const String TitleEmpty = "";
const String Description = "Description";
const String DescriptionEmpty = "";

void main() {
  group('Episode service - ', () {
    group('Create episode - ', () {
      test('Titel is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .createEpisode(TitleEmpty, Description);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .createEpisode(Title, DescriptionEmpty);

        // ASSERT
        expect(result, false);
      });

      test('Create a episode success', () async {
        // ACT
        final result = EpisodeService.instance
            .createEpisode(Title, Description);

        // ASSERT
        expect(result, true);
      });
    });

    group('Edit episode - ', () {
      test('ID is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .editEpisode(IDEmpty, Title, Description);

        // ASSERT
        expect(result, false);
      });

      test('Titel is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .editEpisode(ID, TitleEmpty, Description);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .editEpisode(ID, Title, DescriptionEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = EpisodeService.instance
            .editEpisode(ID, Title, Description);

        // ASSERT
        expect(result, false);
      });

      test('Edit a episode success', () async {
        // ACT
        final result = EpisodeService.instance
            .editEpisode(IDCorrect, Title, Description);

        // ASSERT
        expect(result, true);
      });
    });

    group('Delete episode - ', () {
      test('ID is empty', () async {
        // ACT
        final result = EpisodeService.instance
            .deleteEpisode(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = EpisodeService.instance
            .deleteEpisode(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a episode success', () async {
        // ACT
        final result = EpisodeService.instance
            .deleteEpisode(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
