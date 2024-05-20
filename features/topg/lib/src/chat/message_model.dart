import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

enum MessageAuthor { you, interlocutor }

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required MessageAuthor author,
    required String message,
    required DateTime? date,
    String? name,
  }) = _MessageModel;
}
