// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Trainer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get greetingMessage => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainerCopyWith<Trainer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerCopyWith<$Res> {
  factory $TrainerCopyWith(Trainer value, $Res Function(Trainer) then) =
      _$TrainerCopyWithImpl<$Res, Trainer>;
  @useResult
  $Res call(
      {String id,
      String name,
      String model,
      String prompt,
      String image,
      String greetingMessage,
      String bio,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TrainerCopyWithImpl<$Res, $Val extends Trainer>
    implements $TrainerCopyWith<$Res> {
  _$TrainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? model = null,
    Object? prompt = null,
    Object? image = null,
    Object? greetingMessage = null,
    Object? bio = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      greetingMessage: null == greetingMessage
          ? _value.greetingMessage
          : greetingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrainerCopyWith<$Res> implements $TrainerCopyWith<$Res> {
  factory _$$_TrainerCopyWith(
          _$_Trainer value, $Res Function(_$_Trainer) then) =
      __$$_TrainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String model,
      String prompt,
      String image,
      String greetingMessage,
      String bio,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_TrainerCopyWithImpl<$Res>
    extends _$TrainerCopyWithImpl<$Res, _$_Trainer>
    implements _$$_TrainerCopyWith<$Res> {
  __$$_TrainerCopyWithImpl(_$_Trainer _value, $Res Function(_$_Trainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? model = null,
    Object? prompt = null,
    Object? image = null,
    Object? greetingMessage = null,
    Object? bio = null,
    Object? user = freezed,
  }) {
    return _then(_$_Trainer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      greetingMessage: null == greetingMessage
          ? _value.greetingMessage
          : greetingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_Trainer implements _Trainer {
  const _$_Trainer(
      {required this.id,
      required this.name,
      required this.model,
      required this.prompt,
      required this.image,
      required this.greetingMessage,
      required this.bio,
      this.user});

  @override
  final String id;
  @override
  final String name;
  @override
  final String model;
  @override
  final String prompt;
  @override
  final String image;
  @override
  final String greetingMessage;
  @override
  final String bio;
  @override
  final User? user;

  @override
  String toString() {
    return 'Trainer(id: $id, name: $name, model: $model, prompt: $prompt, image: $image, greetingMessage: $greetingMessage, bio: $bio, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trainer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.greetingMessage, greetingMessage) ||
                other.greetingMessage == greetingMessage) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, model, prompt, image, greetingMessage, bio, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrainerCopyWith<_$_Trainer> get copyWith =>
      __$$_TrainerCopyWithImpl<_$_Trainer>(this, _$identity);
}

abstract class _Trainer implements Trainer {
  const factory _Trainer(
      {required final String id,
      required final String name,
      required final String model,
      required final String prompt,
      required final String image,
      required final String greetingMessage,
      required final String bio,
      final User? user}) = _$_Trainer;

  @override
  String get id;
  @override
  String get name;
  @override
  String get model;
  @override
  String get prompt;
  @override
  String get image;
  @override
  String get greetingMessage;
  @override
  String get bio;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_TrainerCopyWith<_$_Trainer> get copyWith =>
      throw _privateConstructorUsedError;
}
