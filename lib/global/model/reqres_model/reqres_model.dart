import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'support.dart';

part 'reqres_model.g.dart';

@JsonSerializable()
class ReqresModel {
  Data? data;
  Support? support;

  ReqresModel({this.data, this.support});

  factory ReqresModel.fromJson(Map<String, dynamic> json) {
    return _$ResresModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResresModelToJson(this);
}
