import 'package:e_printer/core/utils/models/detailed_category_model.dart';

class CategoryConstants {
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
