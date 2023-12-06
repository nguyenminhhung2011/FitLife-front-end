import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_part_model.g.dart';

@JsonSerializable()
class BodyPartModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'icon')
  final String? icon;

  BodyPartModel(this.id, this.name, this.icon);

  factory BodyPartModel.fromJson(Map<String, dynamic> json) =>
      _$BodyPartModelFromJson(json);

  Map<String, dynamic> toJson() => _$BodyPartModelToJson(this);

  BodyPart get toEntity => BodyPart(
        id: id,
        header: name,
        exCountable: 10,
        level: "Beginner ⚡ Advanced",
        image: ImageConst.banner1,
      );
}
