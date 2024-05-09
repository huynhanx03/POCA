import 'package:flutter_test/flutter_test.dart';
import 'package:poca/models/channel_model.dart';
import 'package:poca/models/topic.dart';
import 'package:poca/services/logic/podcast_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
const String Title = "Title";
const String TitleEmpty = "";
const String Description = "Description";
const String DescriptionEmpty = "";
final List<Topic> Topics = [
  Topic(
      id: "id",
      name: "name",
      description: "description",
      imageUrl: "imageUrl",
      v: 1)
];
const List<Topic>? TopicEmpty = null;
const List<String> listString = [];
const Map<String, dynamic> info = {};
final ChannelModel Channel = ChannelModel(
    id: "id",
    name: "name",
    imageUrl: "imageUrl",
    idUser: "idUser",
    about: "about",
    topics: listString,
    subscribed: listString,
    isUser: true,
    info: info);
const ChannelModel? ChannelEmpty = null;

void main() {
  group('Podcast service - ', () {
    group('Create podcast - ', () {
      test('Titel is empty', () async {
        // ACT
        final result = PodcastService.instance
            .createPodcast(TitleEmpty, Description, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = PodcastService.instance
            .createPodcast(Title, DescriptionEmpty, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Channel is empty', () async {
        // ACT
        final result = PodcastService.instance
            .createPodcast(Title, Description, ChannelEmpty, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Topics is empty', () async {
        // ACT
        final result = PodcastService.instance
            .createPodcast(Title, Description, Channel, TopicEmpty);

        // ASSERT
        expect(result, false);
      });

      test('Create a podcast success', () async {
        // ACT
        final result = PodcastService.instance
            .createPodcast(Title, Description, Channel, Topics);

        // ASSERT
        expect(result, true);
      });
    });

    group('Edit podcast - ', () {
      test('ID is empty', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(IDEmpty, Title, Description, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Titel is empty', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(ID, TitleEmpty, Description, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Description is empty', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(ID, Title, DescriptionEmpty, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Channel is empty', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(ID, Title, Description, ChannelEmpty, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Topics is empty', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(ID, Title, Description, Channel, TopicEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(ID, Title, Description, Channel, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Edit a podcast success', () async {
        // ACT
        final result = PodcastService.instance
            .editPodcast(IDCorrect, Title, Description, Channel, Topics);

        // ASSERT
        expect(result, true);
      });
    });

    group('Delete podcast - ', () {
      test('ID is empty', () async {
        // ACT
        final result = PodcastService.instance
            .deletePodcast(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = PodcastService.instance
            .deletePodcast(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a podcast success', () async {
        // ACT
        final result = PodcastService.instance
            .deletePodcast(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
