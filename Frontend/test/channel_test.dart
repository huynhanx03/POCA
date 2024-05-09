import 'package:flutter_test/flutter_test.dart';
import 'package:poca/models/topic.dart';
import 'package:poca/services/logic/Channel_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
final List<Topic> Topics = [
  Topic(
      id: "id",
      name: "name",
      description: "description",
      imageUrl: "imageUrl",
      v: 1)
];
const List<Topic>? TopicEmpty = null;
const String UserID = "UserID";
const String UserIDEmpty = "";
const String UserIDCorrect = "IDCorrect";
const String Name = "Name";
const String NameEmpty = "";
const String About = "About";
const String AboutEmpty = "";

void main() {
  group('Channel service - ', () {
    group('Create channel - ', () {
      test('Name is empty', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(NameEmpty, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('About is empty', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(Name, AboutEmpty, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Topics is empty', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(Name, About, UserIDCorrect, TopicEmpty);

        // ASSERT
        expect(result, false);
      });

      test('UserID is empty', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(Name, About, UserIDEmpty, Topics);

        // ASSERT
        expect(result, false);
      });

      test('UserID is not exist', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(Name, About, UserID, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Create a channel success', () async {
        // ACT
        final result = ChannelService.instance
            .createChannel(Name, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, true);
      });
    });

    group('Edit Channel - ', () {
      test('ID is empty', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDEmpty, Name, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(ID, Name, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Name is empty', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, NameEmpty, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('About is empty', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, Name, AboutEmpty, UserIDCorrect, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Topics is empty', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, Name, About, UserIDCorrect, TopicEmpty);

        // ASSERT
        expect(result, false);
      });

      test('UserID is empty', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, Name, About, UserIDEmpty, Topics);

        // ASSERT
        expect(result, false);
      });

      test('UserID is not exist', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, Name, About, UserID, Topics);

        // ASSERT
        expect(result, false);
      });

      test('Create a channel success', () async {
        // ACT
        final result = ChannelService.instance
            .editChannel(IDCorrect, Name, About, UserIDCorrect, Topics);

        // ASSERT
        expect(result, true);
      });
    });

    group('Delete Channel - ', () {
      test('ID is empty', () async {
        // ACT
        final result = ChannelService.instance
            .deleteChannel(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = ChannelService.instance
            .deleteChannel(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a Channel success', () async {
        // ACT
        final result = ChannelService.instance
            .deleteChannel(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
