// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetingRoom _$MeetingRoomFromJson(Map<String, dynamic> json) {
  return _MeetingRoom.fromJson(json);
}

/// @nodoc
mixin _$MeetingRoom {
  String? get roomName => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  String? get roomCategory => throw _privateConstructorUsedError;
  String? get ageCategory => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRoomCopyWith<MeetingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRoomCopyWith<$Res> {
  factory $MeetingRoomCopyWith(
          MeetingRoom value, $Res Function(MeetingRoom) then) =
      _$MeetingRoomCopyWithImpl<$Res, MeetingRoom>;
  @useResult
  $Res call(
      {String? roomName,
      int? allCount,
      String? roomCategory,
      String? ageCategory,
      String? location});
}

/// @nodoc
class _$MeetingRoomCopyWithImpl<$Res, $Val extends MeetingRoom>
    implements $MeetingRoomCopyWith<$Res> {
  _$MeetingRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? allCount = freezed,
    Object? roomCategory = freezed,
    Object? ageCategory = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomCategory: freezed == roomCategory
          ? _value.roomCategory
          : roomCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      ageCategory: freezed == ageCategory
          ? _value.ageCategory
          : ageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingRoomImplCopyWith<$Res>
    implements $MeetingRoomCopyWith<$Res> {
  factory _$$MeetingRoomImplCopyWith(
          _$MeetingRoomImpl value, $Res Function(_$MeetingRoomImpl) then) =
      __$$MeetingRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? roomName,
      int? allCount,
      String? roomCategory,
      String? ageCategory,
      String? location});
}

/// @nodoc
class __$$MeetingRoomImplCopyWithImpl<$Res>
    extends _$MeetingRoomCopyWithImpl<$Res, _$MeetingRoomImpl>
    implements _$$MeetingRoomImplCopyWith<$Res> {
  __$$MeetingRoomImplCopyWithImpl(
      _$MeetingRoomImpl _value, $Res Function(_$MeetingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? allCount = freezed,
    Object? roomCategory = freezed,
    Object? ageCategory = freezed,
    Object? location = freezed,
  }) {
    return _then(_$MeetingRoomImpl(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomCategory: freezed == roomCategory
          ? _value.roomCategory
          : roomCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      ageCategory: freezed == ageCategory
          ? _value.ageCategory
          : ageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingRoomImpl implements _MeetingRoom {
  _$MeetingRoomImpl(
      {this.roomName,
      this.allCount,
      this.roomCategory,
      this.ageCategory,
      this.location});

  factory _$MeetingRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingRoomImplFromJson(json);

  @override
  final String? roomName;
  @override
  final int? allCount;
  @override
  final String? roomCategory;
  @override
  final String? ageCategory;
  @override
  final String? location;

  @override
  String toString() {
    return 'MeetingRoom(roomName: $roomName, allCount: $allCount, roomCategory: $roomCategory, ageCategory: $ageCategory, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingRoomImpl &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            (identical(other.roomCategory, roomCategory) ||
                other.roomCategory == roomCategory) &&
            (identical(other.ageCategory, ageCategory) ||
                other.ageCategory == ageCategory) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, roomName, allCount, roomCategory, ageCategory, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingRoomImplCopyWith<_$MeetingRoomImpl> get copyWith =>
      __$$MeetingRoomImplCopyWithImpl<_$MeetingRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingRoomImplToJson(
      this,
    );
  }
}

abstract class _MeetingRoom implements MeetingRoom {
  factory _MeetingRoom(
      {final String? roomName,
      final int? allCount,
      final String? roomCategory,
      final String? ageCategory,
      final String? location}) = _$MeetingRoomImpl;

  factory _MeetingRoom.fromJson(Map<String, dynamic> json) =
      _$MeetingRoomImpl.fromJson;

  @override
  String? get roomName;
  @override
  int? get allCount;
  @override
  String? get roomCategory;
  @override
  String? get ageCategory;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$MeetingRoomImplCopyWith<_$MeetingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
