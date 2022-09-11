import 'package:json_annotation/json_annotation.dart';

part 'support.g.dart';

@JsonSerializable()
class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  factory Support.fromJson(Map<String, dynamic> json) {
    return _$SupportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SupportToJson(this);
}
