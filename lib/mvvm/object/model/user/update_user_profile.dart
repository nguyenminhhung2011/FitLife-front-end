import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/enum/gender.dart';

class UpdateUserProfile {
  final double? weight;
  final double? height;
  final String? phone;
  final String? level;
  final String? currentPlan;
  final String? themeStatus;
  final Gender? gender;
  final Frequency? frequency;

  UpdateUserProfile({
    this.weight,
    this.height,
    this.phone,
    this.level,
    this.currentPlan,
    this.themeStatus,
    this.gender,
    this.frequency,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> result = {"created": true};
    if (weight != null) {
      result.addAll({"weight": weight});
    }
    if (height != null) {
      result.addAll({"height": height});
    }
    if (phone != null) {
      result.addAll({"phone": phone});
    }
    if (level != null) {
      result.addAll({"level": level});
    }
    if (currentPlan != null) {
      result.addAll({"currentPlan": currentPlan});
    }
    if (themeStatus != null) {
      result.addAll({"themeStatus": themeStatus});
    }
    if (gender != null) {
      result.addAll({"gender": gender!.toGenderString.toUpperCase()});
    }
    if (frequency != null) {
      result.addAll({"frequency": frequency!.toFrequencyString.toUpperCase()});
    }
    return result;
  }
}
