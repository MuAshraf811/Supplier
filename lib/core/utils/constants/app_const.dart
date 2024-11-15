import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/models/category_model.dart';
import 'package:e_printer/features/chat/model/message_model.dart';
import 'package:flutter/material.dart';

class AppConst {
  static const homeCategoryStrings = [
    "Printing",
    "Digital Fast Print",
    "Packaging",
    "Signage",
    "UniForm",
    "Gift Items"
  ];

  static final chatMessagesExamples = [
    MessageModel(
        message: "Hello This is Test Message", time: "2:13", isSender: true),
    MessageModel(message: "I'm Muhammed Ashraf", time: "2:09", isSender: true),
    MessageModel(message: "Test ", time: "9:00", isSender: false),
    MessageModel(message: "This is Message", time: "2:13", isSender: true),
    MessageModel(
        message: "Hello This is Test Message", time: "4:44", isSender: false),
    MessageModel(
        message: "Hello Hello Hello Hello ", time: "3:11", isSender: true),
    MessageModel(
        message: " is this Test Message?", time: "2:13", isSender: false),
    MessageModel(
        message: "Test me Test Me Test  ", time: "2:13", isSender: false),
    MessageModel(
        message: "Dummy Dummy Dummy Dummy Dummy Dummy ",
        time: "5:22",
        isSender: true),
    MessageModel(message: "01002011850", time: "10:45", isSender: false),
    MessageModel(
        message: "Text Message Message Message ", time: "6:20", isSender: true),
  ];
  static List<String> uaeCities = [
    'Abu Dhabi',
    'Dubai',
    'Sharjah',
    'Ajman',
    'Fujairah',
    'Ras Al Khaimah',
    'Umm Al Quwain',
    'Al Ain',
    'Khor Fakkan',
    'Dibba Al-Fujairah',
  ];
  static List<String> settingsText = [
    'Account',
    'Terms & Conditions',
    'Our Website',
    'Delete Account',
    'Log Out',
  ];
  static List<String> settingsIcon = [
    AssetsConstants.profileIcon,
    AssetsConstants.termsIcon,
    AssetsConstants.websiteIcon,
    AssetsConstants.deleteIcon,
    AssetsConstants.logOutIcon,
  ];
  static List<Color> settingsIconColor = [
    ColorConsatnts.primary,
    ColorConsatnts.black,
    const Color.fromARGB(255, 8, 79, 138),
    Colors.red,
    const Color.fromARGB(255, 43, 136, 212),
  ];
  static List<List<CategoryModel>> categoryModel = [
    [
      CategoryModel(
          image: "assets/images/printing/canvas bag.jpeg", title: "Canvas bag"),
      CategoryModel(
          image: "assets/images/printing/carton box.jpeg", title: "Carton box"),
      CategoryModel(
          image: "assets/images/printing/coffee bag.jpeg", title: "coffee bag"),
      CategoryModel(
          image: "assets/images/printing/Diverse.jpeg", title: "Diverse"),
      CategoryModel(image: "assets/images/printing/label.jpeg", title: "label"),
      CategoryModel(
          image: "assets/images/printing/offset-printing.jpeg",
          title: "offset-printing"),
      CategoryModel(
          image: "assets/images/printing/Paper Bag-01.png", title: "Paper bag"),
      CategoryModel(
          image: "assets/images/printing/paper box.jpeg", title: "Paper box"),
      CategoryModel(
          image: "assets/images/printing/paper cup.jpeg", title: "Paper cup"),
      CategoryModel(
          image: "assets/images/printing/Plastic Bag.jpeg",
          title: "Plastic Bag"),
      CategoryModel(
          image: "assets/images/printing/plastic cup.jpeg",
          title: "Plastic cup"),
      CategoryModel(
          image: "assets/images/printing/shopping bag.jpeg",
          title: "shopping bag"),
      CategoryModel(
          image: "assets/images/printing/Sticker.jpeg", title: "Sticker"),
      CategoryModel(
          image: "assets/images/printing/wrapping paper.jpeg",
          title: "wrapping paper"),
    ],
    [
      CategoryModel(
          image: "assets/images/Digital/Brochure.jpeg", title: "Brochure"),
      CategoryModel(
          image: "assets/images/Digital/catalog.jpeg", title: "catalog"),
      CategoryModel(
          image: "assets/images/Digital/digital card.jpeg",
          title: "digital card"),
      CategoryModel(
          image: "assets/images/Digital/diverse.jpeg", title: "Diverse"),
      CategoryModel(image: "assets/images/Digital/Flyer.jpeg", title: "Flyer"),
      CategoryModel(
          image: "assets/images/Digital/small shopping bag.png",
          title: "small shopping bag"),
      CategoryModel(
          image: "assets/images/Digital/Stickers.jpg", title: "Stickers"),
    ],
    [
      CategoryModel(
          image: "assets/images/Packaging/Aluminum Products-01.png",
          title: "Aluminum Products"),
      CategoryModel(
          image: "assets/images/Packaging/Fiber Products-01.png",
          title: "Fiber Products"),
      CategoryModel(
          image: "assets/images/Packaging/Foam Products-01.png",
          title: "Foam Products"),
      CategoryModel(
          image: "assets/images/Packaging/Hygiene Products-01.png",
          title: "Hygiene Products"),
      CategoryModel(
          image: "assets/images/Packaging/Paper Products-01.png",
          title: "Paper Products"),
      CategoryModel(
          image: "assets/images/Packaging/wooden Products-01.png",
          title: "wooden Products"),
      CategoryModel(
          image: "assets/images/Packaging/Tissue-01.png", title: "Tissue"),
    ],
    [
      CategoryModel(
          image: "assets/images/Signage/2D signage.jpeg", title: "2D signage"),
      CategoryModel(
          image: "assets/images/Signage/3D signage.jpeg", title: "3D signage"),
      CategoryModel(
          image: "assets/images/Signage/Digital Screen.jpeg",
          title: "Digital Screen"),
      CategoryModel(
          image: "assets/images/Signage/diverse.jpeg", title: "diverse"),
      CategoryModel(
          image: "assets/images/Signage/exhibition stand.jpeg",
          title: "exhibition stand."),
      CategoryModel(image: "assets/images/Signage/Flag.jpeg", title: "Flag"),
      CategoryModel(
          image: "assets/images/Signage/flix signage.jpeg",
          title: "flix signage"),
      CategoryModel(
          image: "assets/images/Signage/large format sticker.jpeg",
          title: "large format sticker"),
      CategoryModel(
          image: "assets/images/Signage/pop up.jpeg", title: "pop up"),
      CategoryModel(
          image: "assets/images/Signage/roll up.jpeg", title: "roll up"),
      CategoryModel(
          image: "assets/images/Signage/side signage.jpeg",
          title: "side signage"),
    ],
    [
      CategoryModel(
          image: "assets/images/Unifoarm/Chef Cap.jpeg", title: "Chef Cap"),
      CategoryModel(
          image: "assets/images/Unifoarm/Chef Jacket.jpeg",
          title: "Chef Jacket"),
      CategoryModel(
          image: "assets/images/Unifoarm/diverse.jpeg", title: "diverse"),
      CategoryModel(
          image: "assets/images/Unifoarm/full set.jpg", title: "Full Set"),
      CategoryModel(image: "assets/images/Unifoarm/shirt.jpeg", title: "Shirt"),
      CategoryModel(image: "assets/images/Unifoarm/suit.jpeg", title: "Suit"),
      CategoryModel(
          image: "assets/images/Unifoarm/T-shirt.jpeg", title: "T-shirt"),
      CategoryModel(
          image: "assets/images/Unifoarm/trouser.jpeg", title: "Trouser"),
    ],
    [
      CategoryModel(
          image: "assets/images/Gift Items/agenda.jpeg", title: "agenda"),
      CategoryModel(
          image: "assets/images/Gift Items/Diverse.jpeg", title: "Diverse"),
      CategoryModel(
          image: "assets/images/Gift Items/flash memory.jpeg",
          title: "flash memory"),
      CategoryModel(
          image: "assets/images/Gift Items/ID Card.jpeg", title: "Id Card"),
      CategoryModel(
          image: "assets/images/Gift Items/Lanyard.jpeg", title: "Lanyard"),
      CategoryModel(
          image: "assets/images/Gift Items/mobile cover.jpeg",
          title: "Mobile Cover"),
      CategoryModel(
          image: "assets/images/Gift Items/Mouse Pad.jpeg", title: "Mouse Pad"),
      CategoryModel(image: "assets/images/Gift Items/Mug.jpeg", title: "Mug"),
      CategoryModel(image: "assets/images/Gift Items/Pen.jpeg", title: "Pen"),
      CategoryModel(
          image: "assets/images/Gift Items/Trophy.jpeg", title: "Trophy"),
      CategoryModel(
          image: "assets/images/Gift Items/umbrella.jpeg", title: "umbrella"),
      CategoryModel(
          image: "assets/images/Gift Items/Wooden-Stand-.jpeg",
          title: "Wooden-Stand"),
      CategoryModel(
          image: "assets/images/Gift Items/Wristband.jpeg", title: "Wristband"),
    ],
  ];
}
