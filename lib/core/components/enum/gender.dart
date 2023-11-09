enum Gender { man, woman }

extension GenderExtension on Gender {
  String get toGenderString =>
      switch (this) { Gender.man => "man", _ => "woman" };
}
