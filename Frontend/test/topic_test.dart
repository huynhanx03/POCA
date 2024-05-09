import 'package:flutter_test/flutter_test.dart';
import 'package:poca/services/logic/Topic_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
const String Name = "Name";
const String NameEmpty = "";

void main() {
  group('Topic service - ', () {
    group('Create Topic - ', () {
      test('Name is empty', () async {
        // ACT
        final result = TopicService.instance
            .createTopic(NameEmpty);

        // ASSERT
        expect(result, false);
      });

      test('Create a topic success', () async {
        // ACT
        final result = TopicService.instance
            .createTopic(Name);

        // ASSERT
        expect(result, true);
      });
    });

    group('Edit Topic - ', () {
      test('Name is empty', () async {
        // ACT
        final result = TopicService.instance
            .editTopic(IDCorrect, NameEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is empty', () async {
        // ACT
        final result = TopicService.instance
            .editTopic(IDEmpty, Name);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = TopicService.instance
            .editTopic(ID, Name);

        // ASSERT
        expect(result, false);
      });

      test('Edit a topic success', () async {
        // ACT
        final result = TopicService.instance
            .editTopic(IDCorrect, Name);

        // ASSERT
        expect(result, true);
      });
    });
    
    group('Delete Topic - ', () {
      test('ID is empty', () async {
        // ACT
        final result = TopicService.instance
            .deleteTopic(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = TopicService.instance
            .deleteTopic(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a topic success', () async {
        // ACT
        final result = TopicService.instance
            .deleteTopic(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
