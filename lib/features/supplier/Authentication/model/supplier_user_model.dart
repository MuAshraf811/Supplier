class SupplierUserModel { 


  // this is the main data supplier must provide to complete his registeration
  final String email;
  final String mobile;
  final String city;
  final String companyName;
  final String taxNumber;
  final String bankName;
  final String ipanNumber;

  SupplierUserModel(
      {required this.email,
      required this.mobile,
      required this.city,
      required this.companyName,
      required this.taxNumber,
      required this.bankName,
      required this.ipanNumber});  

      // this is factory constructor to convert firebase response to dart model 
      factory SupplierUserModel.fromJson(Map<String, dynamic> json) {
    return SupplierUserModel(
      email: json['email'],
      mobile: json['mobile'],
      city: json['city'],
      companyName: json['companyName'],
      taxNumber: json['taxNumber'],
      bankName: json['bankName'],
      ipanNumber: json['ipanNumber'],
    );
  }

  // Method to convert the instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'mobile': mobile,
      'city': city,
      'companyName': companyName,
      'taxNumber': taxNumber,
      'bankName': bankName,
      'ipanNumber': ipanNumber,
    };
  }
}
