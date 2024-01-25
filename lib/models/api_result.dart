import 'package:json_annotation/json_annotation.dart';

import 'code_message.dart';
import 'item.dart';

part 'api_result.g.dart';

@JsonSerializable()
class ApiResult {
  int list_total_count;
  CodeMessage RESULT;
  List<Item> row;

  ApiResult(this.list_total_count, this.RESULT, this.row);

  factory ApiResult.fromJson(Map<String, dynamic> json) => _$ApiResultFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResultToJson(this);

  @override
  String toString() {
    return 'ApiResult{list_total_count: $list_total_count, RESULT: $RESULT, row: $row}';
  }
}
