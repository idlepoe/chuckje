import 'package:json_annotation/json_annotation.dart';

part 'code_message.g.dart';

@JsonSerializable()
class CodeMessage{
  String CODE;
  String MESSAGE;

  CodeMessage(this.CODE, this.MESSAGE);

  factory CodeMessage.fromJson(Map<String, dynamic> json) => _$CodeMessageFromJson(json);

  Map<String, dynamic> toJson() => _$CodeMessageToJson(this);

  @override
  String toString() {
    return 'CodeMessage{CODE: $CODE, MESSAGE: $MESSAGE}';
  }
}