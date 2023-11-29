enum Gender { male, female }

extension GenderExtension on Gender {
  String get toGenderString =>
      switch (this) { Gender.male => "MALE", _ => "FEMALE" };
}
