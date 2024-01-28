// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      comment: json['comment'] as String?,
      gender: json['gender'] as String?,
      residence: json['residence'] as String?,
      age: json['age'] as int?,
      height: json['height'] as int?,
      image: json['image'] as String?,
      personalInfo: json['personalInfo'] as String?,
      mbti: json['mbti'] as String?,
      personality: json['personality'] as String?,
      interest: json['interest'] as String?,
      likePersonality: json['likePersonality'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'comment': instance.comment,
      'gender': instance.gender,
      'residence': instance.residence,
      'age': instance.age,
      'height': instance.height,
      'image': instance.image,
      'personalInfo': instance.personalInfo,
      'mbti': instance.mbti,
      'personality': instance.personality,
      'interest': instance.interest,
      'likePersonality': instance.likePersonality,
    };
