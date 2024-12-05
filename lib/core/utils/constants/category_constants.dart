import 'package:e_printer/core/utils/models/category_model.dart';
import 'package:e_printer/core/utils/models/detailed_category_model.dart';

class CategoryConstants {
  static List moldedFiber = [
    "6X4 inch Bio Hinged Container",
    "8 inch Square Plate",
    "9x6.5 inch Oval Plate",
    "9X6 inch Bio Hinged Container",
    "10x5 inch Rectangular Plate",
    "10x8 inch Bio Oval Plate",
    "12x10 inch Bio Oval Plate",
    "Bio Bowl 8Oz",
    "Bio Bowl 12Oz",
    "Bio Bowl 18Oz",
    "Bio Bowl 32Oz",
    "Bio Burrito Bowl 18Oz",
    "Bio Burrito Bowl 26Oz",
    "Bio Degradable 6 inch Burger Box",
    "Bio Natural Clear Container 750Ml 2 Divider 400Oz",
    "Bio Natural Clear Container 800Ml 400Oz",
    "Bio Natural Clear Container 1800Ml 200Oz",
    "Bio Paper Lunch Box 3 Divider 9 inch",
    "Biodegradable HD Cutlery Set",
    "Biodegradable Lunch Box 2 Divider",
    "Biodegradable Normal Fork",
    "Biodegradable Normal Knife",
    "Biodegradable Plate 10 inch Plain",
    "Biodegradable Square Bowl 24Oz",
    "Biodegradable Square Bowl 32Oz",
    "Biodegradable Sushi Tray",
    "Clamshell Container 8X8 cm",
    "Clamshell Container 9X9 cm",
    "Deep 9 inch 3 Compartment Container",
    "Dome Lid for 8 inch Square Plate",
    "Dome Lid for Oval Plate 12x10 inch",
    "Eco Friendly Burger Box 6 inch 500Oz",
    "Eco Friendly Food Container 5 Compartment 200Oz",
    "Eco Friendly Food Container 450Ml 500Oz",
    "Eco Friendly Food Container 550Ml 500Oz",
    "Eco Friendly Food Container 650Ml – 500Oz",
    "Eco Friendly Food Container 750Ml – 500Oz",
    "Eco Friendly Portion Cup 1Oz (30Ml) 2000Oz",
    "Eco Friendly Portion Cup 2Oz (60Ml) 2000Oz",
    "Eco Friendly Round Bowl 32Oz 500Oz",
    "Eco Friendly Round Bowl 40Oz 500Oz",
    "Eco Friendly Round Bowl Lids Pet 32Oz/40Oz 500Oz",
    "Eco Friendly Square Bowl 16Oz 300Oz",
    "Eco Friendly Square Bowl 24Oz 300Oz",
    "Large 5cm Bio American Tray 8.5x12.5 inch",
    "Lid for Sushi Box",
    "Lids for 9inch 3 Compartment Container",
    "Lids for Multi Purpose Container 12 Oz & 16 Oz",
    "Multi Purpose Container 12 Oz",
    "Multi Purpose Container 24 Oz",
    "Multi Purpose Container 32 Oz",
    "Paper Soup Bowl 16Oz",
    "Plate, Bio Degradable, Paper, 3cm, 10inch",
    "Wide Rim Bowl 12Oz",
    "Wide Rim Bowl 24Oz",
    "Wide Rim Bowl 32Oz"
  ];
  static List carton = [ "3Ply Brown Box 26x19x27cm", "3Ply Brown Box 37x26x27cm",
"3Ply Brown Box 42x14x30cm", "5 Ply Corrugated Carton Box 40x40x40cm", "5 Ply Corrugated Carton Box 45x45x45cm", "5 Ply Cardboard Carton Box 46x46x71cm", "5 Ply Corrugated Carton Box 48x40x39cm","Brown Pizza Box Large", "Brown Pizza Box medium", "Brown Pizza Box small", "Multipurpose Carton Corrugated 20x20x10cm", "Multipurpose Carton Corrugated 30x20x10cm", "Multipurpose Carton Corrugated 40x30x12cm", "Multipurpose Carton Corrugated 50x30x12cm", "Multipurpose Carton Corrugated 59x40x11cm", "Printed cake box", "Ramadan Printed Carton Box", "White Cake Box 15x15cm", "White Cake Box 20x20cm", "White Cake Box 25x25cm", "White Cake Box 30x30cm", "White Cake Box 35x35cm", "White Pizza Box large", "White Pizza Box medium", "White Pizza Box small" ];
  static List foam = [
    "Black Rectangle Foam Tray 17.5 X 13.3 X 2 Cm",
    "Black Rectangle Foam Tray 21.5 X 17.7 X 1.8 Cm",
    "Foam Bowl 12 Oz",
    "Foam Burger Box",
    "Foam Cup 6oz",
    "Foam Cup 8oz",
    "Foam Cup 10oz",
    "Foam Cup 12oz",
    "Foam Cup 14oz",
    "Foam Lunch Box",
    "Foam Plates 10 Inch 3 Section",
    "Rectangle Foam Tray 17.5 X 13.3 X 2 Cm",
    "Rectangle Foam Tray 21.5 X 15.2 X 2.2 Cm",
    "Rectangle Foam Tray 26.2 X 18.5 X 2.2 Cm",
    "Rectangle Jumbo Foam Tray 31.5 X 23.2 X 4.2 cm",
    "White Round Foam Plate 9inch",
    "White Round Foam Plate 10inch",
    "White Round Foam Plate 12inch"
  ];
  static List<List<PackageingModel>> packageingItems({required int index}) => [
        moldedFiber
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Molded Fiber Products/$index.jpeg",
                index: index))
            .toList(),
        moldedFiber
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Molded Fiber Products/$index.jpeg",
                index: index))
            .toList(),
        foam
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Foam Products/$index.jpeg",
                index: index))
            .toList(),
        carton
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Carton Products/$index.jpeg",
                index: index))
            .toList(),
        moldedFiber
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Molded Fiber Products/$index.jpeg",
                index: index))
            .toList(),
        moldedFiber
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Molded Fiber Products/$index.jpeg",
                index: index))
            .toList(),
        moldedFiber
            .map((e) => PackageingModel(
                title: e,
                image: "assets/images/Molded Fiber Products/$index.jpeg",
                index: index))
            .toList(),
      ];

  static final printing = [
    DetailedCategoryModel(
      title: "Offset Print",
      radioOptions: [
        "Business Card",
        "Flyer",
        "Brochure",
        "Letterhead",
        "Envelope",
        "Nootbook",
        "Invoice Book",
        "Reciept Voucher",
        "Payment Voucher",
        "Captain Order",
        "Paper Sticker",
        "Pvc Sticker",
        "Menu",
        "Lather Menu / Folder",
        "Catalogue",
        "Business Profile",
        "Label"
      ],
      details: [
        {
          "title": "Business Card",
          "details": {
            "Size": ["5x9", "5x8"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Cutting": ["Shape", "Normal", "Curve"],
            "Quantity": [1000, 2000, 3000, 4000, 5000],
          },
          "other": {
            "Foil": ["Gold", "Silver"],
            "Spot UV": [1, 2],
          },
          "isRequired": false,
        },
        {
          "title": "Flyer",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Folding": ["3 fold", "4 fold"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Dai Cutt": ["Gold", "Sliver"],
            "Spot UV": [1, 2],
          },
          "isRequired": false,
        },
        {
          "title": "Brochure",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Folding": ["3 fold", "4 fold"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Dai Cutt": ["Gold", "Sliver"],
            "Spot UV": [1, 2],
          },
          "isRequired": false,
        },
        {
          "title": "Letterhead",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Folding": ["3 fold", "4 fold", "Non"],
            "Quantity": [1000, 2000, 3000, 4000, 5000],
          },
          "other": {
            "Foil": ["Non", "Sliver"],
            "Emboss": [1, 2],
          },
          "isRequired": true,
        },
        {
          "title": "Envelope",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Material": ["Hispapel"],
            "Folding": ["3 fold", "4 fold", "Non"],
            "Quantity": [1000, 2000, 3000, 4000, 5000],
          },
          "other": {
            "Foil": ["Non", "Sliver"],
            "Emboss": [1, 2],
          },
          "isRequired": false,
        },
        {
          "title": "Noot Book",
          "details": {
            "Size": ["A5", "A4", "A6"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Folding": ["3 fold", "4 fold", "Non"],
            "Quantity": [1000, 2000, 3000, 4000, 5000],
          },
          "other": {
            "Dai Cutt": ["Non", "Sliver"],
            "Spot UV": [1, 2],
          },
          "isRequired": true,
        },
        {
          "title": "Invoice Book",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Material": ["Glossy"],
            "Sheet": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [10, 20, 30, 40],
          },
          "other": {
            "Copy": ["1+1", "1+2"],
            "Creasing": ["Yes", "No"],
          },
          "isRequired": false,
        },
        {
          "title": "Reciept Voucher",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Material": ["Ncr"],
            "Folding": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [10, 20, 30, 40],
          },
          "other": {
            "Copy": ["1+1", "1+2"],
            "Creasing": ["Yes", "No"],
          },
          "isRequired": false,
        },
        {
          "title": "Payment Voucher",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Material": ["Ncr"],
            "Folding": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [10, 20, 30, 40],
          },
          "other": {
            "Copy": ["1+1", "1+2"],
            "Creasing": ["Yes", "No"],
          },
          "isRequired": false,
        },
        {
          "title": "Captain Order",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Material": ["Ncr"],
            "Folding": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [10, 20, 30, 40],
          },
          "other": {
            "Copy": ["1+1", "1+2"],
            "Creasing": ["Yes", "No"],
          },
          "isRequired": false,
        },
        {
          "title": "Paper Sticker",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Material": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [5000, 6000, 7000, 8000, 9000, 10000],
          },
          "other": {
            "Dai Cutt": ["Yes", "No"],
            "Type": ["Sheet", "sheet"],
          },
          "isRequired": true,
        },
        {
          "title": "PVC Sticker",
          "details": {
            "Size": ["A4", "A6", "A5", "A4"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Material": ["30 Sheet", "40 Sheet", "50 Sheet"],
            "Quantity": [5000, 6000, 7000, 8000, 9000, 10000],
          },
          "other": {
            "Dai Cutt": ["Yes", "No"],
            "Type": ["Sheet", "sheet"],
          },
          "isRequired": true,
        },
        {
          "title": "Menu",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Creasing": ["Yes", "No"],
            "Pages": [20, 30, 40, 50, 60, 70],
            "Quantity": [5000, 6000, 7000, 8000, 9000, 10000],
          },
          "other": {
            "Dai Cutt": ["Yes", "No"],
            "Type": ["Sheet", "sheet"],
          },
          "isRequired": true,
        },
        {
          "title": "Lather Menu / Folder",
          "details": {
            "Type": ["Lather Menu", "Lather Folder"],
          },
          "other": {},
          "isRequired": true,
        },
        {
          "title": "Catalogue",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Creasing": ["Yes", "No"],
            "Pages": [20, 30, 40, 50, 60, 70],
            "Quantity": [5000, 6000, 7000, 8000, 9000, 10000],
          },
          "other": {
            "Dai Cutt": ["Yes", "No"],
            "Type": ["Sheet", "sheet"],
          },
          "isRequired": true,
        },
        {
          "title": "Business Profile",
          "details": {
            "Size": ["A4", "A3", "A3"],
            "Printing": [1, 2, 3],
            "Paper": [55, 90, 100, 115, 135, 150, 170, 200, 250, 300, 350],
            "Lamination": ["Glossy", "Matt"],
            "Creasing": ["Yes", "No"],
            "Pages": [20, 30, 40, 50, 60, 70],
            "Quantity": [5000, 6000, 7000, 8000, 9000, 10000],
          },
          "other": {
            "Dai Cutt": ["Yes", "No"],
            "Type": ["Sheet", "sheet"],
          },
          "isRequired": true,
        },
        {
          "title": "Label",
          "details": {},
          "other": {},
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Carton Boxes",
      radioOptions: [
        "Pizza Box",
        "Lunch Box",
        "Meal Box",
        "Sandwich Box",
        "Duplex Box"
      ],
      details: [
        {
          "title": "Pizza Box",
          "details": {
            "height": [5, 6, 7, 8, 9],
            "width": [5, 6, 7, 8, 9],
            "Length": [5, 6, 7, 8, 9],
            "Printing": [1, 2, 3, 4],
            "Carton": ["3 Ply"],
            "OutSide": ["Brown", "White"],
            "Inside": ["Brown", "White"],
            "Block": ["Laser", "Normal"],
            "Quantity": [100, 200, 300, 400, 500],
          },
          "other": {
            "Inside Print": ["1 Color", "2 Colors", "3 Colors", "4 Colors"],
            "Packing": [100],
          },
          "isRequired": true,
        },
        {
          "title": "Lunch Box",
          "details": {
            "height": [5, 6, 7, 8, 9],
            "width": [5, 6, 7, 8, 9],
            "Length": [5, 6, 7, 8, 9],
            "Printing": [1, 2, 3, 4],
            "Carton": ["3 Ply"],
            "OutSide": ["Brown", "White"],
            "Inside": ["Brown", "White"],
            "Block": ["Laser", "Normal"],
            "Quantity": [100, 200, 300, 400, 500],
          },
          "other": {
            "Inside Print": ["1 Color", "2 Colors", "3 Colors", "4 Colors"],
            "Packing": [100],
          },
          "isRequired": true,
        },
        {
          "title": "Meal Box",
          "details": {
            "height": [5, 6, 7, 8, 9],
            "width": [5, 6, 7, 8, 9],
            "Length": [5, 6, 7, 8, 9],
            "Printing": [1, 2, 3, 4],
            "Carton": ["3 Ply"],
            "OutSide": ["Brown", "White"],
            "Inside": ["Brown", "White"],
            "Block": ["Laser", "Normal"],
            "Quantity": [100, 200, 300, 400, 500],
          },
          "other": {
            "Inside Print": ["1 Color", "2 Colors", "3 Colors", "4 Colors"],
            "Packing": [100],
          },
          "isRequired": true,
        },
        {
          "title": "Sandwich Box",
          "details": {
            "height": [5, 6, 7, 8, 9],
            "width": [5, 6, 7, 8, 9],
            "Length": [5, 6, 7, 8, 9],
            "Printing": [1, 2, 3, 4],
            "Carton": ["3 Ply"],
            "OutSide": ["Brown", "White"],
            "Inside": ["Brown", "White"],
            "Block": ["Laser", "Normal"],
            "Quantity": [100, 200, 300, 400, 500],
          },
          "other": {
            "Inside Print": ["1 Color", "2 Colors", "3 Colors", "4 Colors"],
            "Packing": [100],
          },
          "isRequired": true,
        },
        {
          "title": "Duplex Box",
          "details": {
            "height": [5, 6, 7, 8, 9],
            "width": [5, 6, 7, 8, 9],
            "Length": [5, 6, 7, 8, 9],
            "Printing": [1, 2, 3, 4],
            "Carton": ["3 Ply"],
            "OutSide": ["Brown", "White", "Duplex"],
            "Inside": ["Brown", "White"],
            "Print": ["Offset"],
            "Quantity": [100, 200, 300, 400, 500],
          },
          "other": {
            "Inside Print": ["1 Color", "2 Colors", "3 Colors", "4 Colors"],
            "Packing": [100],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Paper Boxes",
      radioOptions: [
        "Burger Box",
        "Salad Box",
        "Manakish Box",
        "Sandwich Box",
        "Take Away Box",
        "Noodles Box"
      ],
      details: [
        {
          "title": "Burger Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Salad Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Manakish Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Sandwich Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Take Away Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Noodles Box",
          "details": {
            "Type": ["Food Board", "Kraft"],
            "Size": ["Stander", "Customize"],
            "Printing": ["1/0 Color", "2/0 Color", "3/0 Color", "4/0 Color"],
            "Paper": [350, 40],
            "Lamination": ["Non", "Glossy", "Matt"],
            "Shape": [500, 1000, 1500, 2000],
            "Quantity": [5000, 7000, 10000, 12000, 15000, 17000, 20000],
          },
          "other": {
            "Emboss": ["Yes", "Non"],
            "Packing": [250],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Wrapping Paper",
      radioOptions: [
        "Sandwich Paper",
        "L Shape Paper",
        "Sandwich Pouch",
        "Wrapping Roll",
        "Sweet Roll"
      ],
      details: [
        {
          "title": "Sandwich Paper",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Paper": [25, 30, 35, 40, 45, 50],
            "Printing": [1, 2, 3],
            "Quantity": [500, 1000, 1500, 2000],
            "Cutting": ["Auto Sel"],
          },
          "other": {
            "Block": ["Laaser", "Laser"],
            "Packing": [1000, 2000],
          },
          "isRequired": false,
        },
        {
          "title": "L Shape Paper",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Paper": [25, 30, 35, 40, 45, 50],
            "Printing": [1, 2, 3],
            "Quantity": [500, 1000, 1500, 2000],
            "Cutting": ["Auto Sel", "Normal"],
          },
          "other": {
            "Block": ["Laaser", "Laser"],
            "Packing": [1000, 2000],
          },
          "isRequired": false,
        },
        {
          "title": "Sandwich Pouch",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Paper": [25, 30, 35, 40, 45, 50],
            "Printing": [1, 2, 3],
            "Quantity": [500, 1000, 1500, 2000, 3000],
            "Cutting": ["Auto Sel", "Normal"],
          },
          "other": {
            "Block": ["Laaser", "Laser"],
            "Packing": [1000, 2000],
          },
          "isRequired": true,
        },
        {
          "title": "Wrapping Roll",
          "details": {
            "Weight": [20, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Paper": [25, 30, 35, 40, 45, 50],
            "Printing": [1, 2, 3],
            "Quantity": [500, 1000, 1500, 2000],
            "Cutting": ["Auto Sel"],
          },
          "other": {
            "Block": ["Laaser", "Laser"],
            "Packing": [1000, 2000],
          },
          "isRequired": true,
        },
        {
          "title": "Sweet Roll",
          "details": {
            "Weight": [20, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Paper": [25, 30, 35, 40, 45, 50],
            "Printing": [1, 2, 3],
            "Quantity": [500, 1000, 1500, 2000],
            "Cutting": ["Auto Sel"],
          },
          "other": {
            "Block": ["Laaser", "Laser"],
            "Packing": [1000, 2000],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Coffee Bag",
      radioOptions: [
        "Coffee Bag With Zipper",
        "Coffee Bag With Filter",
        "Plastic Coffee Bag",
        "Paper Coffee Bag",
      ],
      details: [
        {
          "title": "Coffee Bag With Zipper",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "PE": ["Paper"],
            "Celinder": ["Steel"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Spot UV": ["Offset", "No"],
            "Packing": ["250 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Coffee Bag With Filter",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "PE": ["Paper"],
            "Celinder": ["Steel"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Spot UV": ["Offset", "No"],
            "Packing": ["250 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Paper Coffee Bag ",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "PE": ["Paper"],
            "Celinder": ["Steel"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Spot UV": ["Offset", "No"],
            "Packing": ["250 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Plastic Coffee Bag ",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "PE": ["Paper"],
            "Celinder": ["Steel"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Spot UV": ["Offset", "No"],
            "Packing": ["250 pcs"],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Shopping Bag",
      radioOptions: [
        "Shopping Bag CardBoard",
        "Shopping Bag as Request",
      ],
      details: [
        {
          "title": "Shopping Bag CardBoard",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Handle": ["Laser"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Shopping Bag as Request",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "Width": [25, 30, 35, 40, 45],
            "Bottom": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Handle": ["Laser"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Kraft Paper Bags",
      radioOptions: [
        "Kraft Paper Bags With Twisted Handle",
        "Kraft Paper Bags Square Bottom (SOS)",
        "Kraft Paper Bags Flat",
        "Kraft Paper Bags Flat With Window",
      ],
      details: [
        {
          "title": "Kraft Paper Bags With Twisted Handle",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Bottom": [25, 30, 35, 40],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "Laser"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Kraft Paper Bags Square Bottom (SOS)",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Bottom": [25, 30, 35, 40],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "Laser"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Kraft Paper Bags Flat",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Window": ["Non", "Yes"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Kraft Paper Bags Flat With Window",
          "details": {
            "Color": ["White", "Brown"],
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Window": ["Non", "Yes"],
            "Packing": [250],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Canavas Bag",
      radioOptions: [
        "Canavas Bag With Handle",
        "Canavas Bag Square Bottom",
        "Canavas Bag Flat",
      ],
      details: [
        {
          "title": "Canavas Bag With Handle",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "Laser"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Canavas Bag Square Bottom",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Print": ["Offset", "Laser"],
            "Packing": [250],
          },
          "isRequired": true,
        },
        {
          "title": "Canavas Bag Flat",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Window": ["Non", "Laser"],
            "Packing": [250],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Plastic Bag",
      radioOptions: [
        "Plastic Bag Hd",
        "Plastic Bag LD",
        "Courier Bag",
      ],
      details: [
        {
          "title": "Plastic Bag Hd",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Gasset": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Packing": ["50 Kg"],
          },
          "isRequired": true,
        },
        {
          "title": "Plastic Bag LD",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Gasset": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Packing": ["50 Kg"],
          },
          "isRequired": true,
        },
        {
          "title": "Courier Bag",
          "details": {
            "height": [25, 30, 35, 40, 45],
            "width": [25, 30, 35, 40, 45],
            "Gasset": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Handle": ["Paper"],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Packing": ["50 Kg"],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Paper Cup",
      radioOptions: [
        "Paper Cup Sigle Wall",
        "Paper Cup Double Wall",
        "Paper Cup Corrugated",
        "Ice Cream Cup",
        "Pop Corn Cup"
      ],
      details: [
        {
          "title": "Paper Cup Sigle Wall",
          "details": {
            "Size": [4, 5, 6, 7, 8],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [3000, 4000, 5000, 6000, 7000, 8000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Paper Cup Sigle Wall",
          "details": {
            "Size": [4, 5, 6, 7, 8],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [3000, 4000, 5000, 6000, 7000, 8000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Paper Cup Corrugated",
          "details": {
            "Size": [4, 5, 6, 7, 8],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [3000, 4000, 5000, 6000, 7000, 8000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Ice Cream Cup",
          "details": {
            "Size": [4, 5, 6, 7, 8],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [3000, 4000, 5000, 6000, 7000, 8000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Pop Corn Cup",
          "details": {
            "Size": [4, 5, 6, 7, 8],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [3000, 4000, 5000, 6000, 7000, 8000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Plastic Cup",
      radioOptions: [
        "Plastic Cup PP",
        "Plastic Cup PET",
      ],
      details: [
        {
          "title": "Plastic Bag Hd",
          "details": {
            "Size": [25, 30, 35, 40, 45],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
        {
          "title": "Plastic Bag PET",
          "details": {
            "Size": [25, 30, 35, 40, 45],
            "Lid": [25, 30, 35, 40, 45],
            "Foil": [10, 20, 30],
            "Printing": [1, 2, 3],
            "Block": ["Laser"],
            "Quantity": [500, 1000, 1500, 2000],
          },
          "other": {
            "Emboss": ["Yes", "No"],
            "Packing": ["1x1000 pcs"],
          },
          "isRequired": true,
        },
      ],
    ),
    DetailedCategoryModel(
      title: "Various Products",
      radioOptions: [
        "Cup Holder",
        "Sleeve",
        "Facial Tissue Printed",
        "Napkin Tissue Printed",
        "Wet Napkin Printed",
        "Printers Paper",
        "Thermal Paper For Printers"
      ],
      details: [],
    ),
  ];
}
