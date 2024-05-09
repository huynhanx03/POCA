import 'package:flutter_test/flutter_test.dart';
import 'package:poca/services/logic/comment_service.dart';

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";
const String PodcastID = "PodcastID";
const String PodcastIDCorrect = "IDCorrect";
const String PodcastIDEmpty = "";
const String UserID = "UserID";
const String UserIDEmpty = "";
const String UserIDCorrect = "IDCorrect";
const String Content = "Content";
const String ContentEmpty = "";
const int Rate1 = 1;
const int Rate5 = 5;
const int Rate0 = 0;
const int Rate6 = 6;
const int Rate = 3;

void main() {
  group('Comment service - ', () {
    group('Create comment - ', () {
      test('PodcastID is empty', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDEmpty, UserID, Content, Rate);

        // ASSERT
        expect(result, false);
      });

      test('PodcastID is not exist', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastID, UserID, Content, Rate);

        // ASSERT
        expect(result, false);
      });

      test('UserID is empty', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDEmpty, Content, Rate);

        // ASSERT
        expect(result, false);
      });

      test('UserID is not exist', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserID, Content, Rate);

        // ASSERT
        expect(result, false);
      });

      test('Content is empty', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, ContentEmpty, Rate);

        // ASSERT
        expect(result, false);
      });

      test('Rate greater than 5', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, Content, Rate6);

        // ASSERT
        expect(result, false);
      });

      test('Rate is less than 1', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, Content, Rate0);

        // ASSERT
        expect(result, false);
      });

      test('Rate equals 5', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, Content, Rate5);

        // ASSERT
        expect(result, true);
      });

      test('Rate equals 1', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, Content, Rate1);

        // ASSERT
        expect(result, true);
      });

      test('Create a comment success', () async {
        // ACT
        final result = CommentService.instance
            .createComment(PodcastIDCorrect, UserIDCorrect, Content, Rate);

        // ASSERT
        expect(result, true);
      });
    });
    
    group('Delete comment - ', () {
      test('ID is empty', () async {
        // ACT
        final result = CommentService.instance
            .deleteComment(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = CommentService.instance
            .deleteComment(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a comment success', () async {
        // ACT
        final result = CommentService.instance
            .deleteComment(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}
