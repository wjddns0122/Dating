import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class IconShape {
  static const iconPerson = Icon(Icons.person, size: 20, color: Colors.white);

  static const iconLocationOn =
      Icon(Icons.location_on, size: 20, color: Colors.white);

  static const iconSettings =
      Icon(Icons.settings, color: Colors.black, size: 30);

  static const iconPhotoCamera =
      Icon(Icons.photo_camera, color: Colors.black, size: 30);

  static Icon get iconArrowBack =>
      Icon(Icons.arrow_back, color: ThemeColor.fontColor, size: 30);

  static const iconMale = Icon(Icons.people, size: 20, color: Colors.blue);

  static const iconFemale = Icon(Icons.people, size: 20, color: Colors.red);

  static const iconSchool = Icon(Icons.school, size: 50);

  static const iconEmojiPeople = Icon(Icons.emoji_people, size: 50);

  static const iconArrowBackIos =
      Icon(Icons.arrow_back_ios, color: Colors.pink);

  static const iconNotificationOutline =
      Icon(Icons.notifications_outlined, size: 30, color: Colors.black);

  static const iconAdd = Icon(Icons.add, size: 30, color: Colors.white);

  static const iconMore = Icon(Icons.more_horiz, color: Colors.black);

  static Icon get iconArrowForward =>
      Icon(Icons.arrow_forward_ios, size: 15, color: ThemeColor.iconColor);

  static const iconClose = Icon(Icons.close, color: Colors.black);

  static const iconAddBoxOutlined =
      Icon(Icons.add_box_outlined, color: Colors.black, size: 35);

  static Icon get iconFavorite =>
      const Icon(Icons.favorite, color: Colors.white, size: 25);

  static Icon get iconNoImage =>
      const Icon(Icons.image_not_supported, color: Colors.white);
}
