class ClientOrderModel {
  final String orderName;
  final String orderDetails;
  final String orderDescription;
  final String orderDate; 
  final String userId;  
  final String orderId;
  

  ClientOrderModel(
      {required this.orderName, 
      required this.userId, 
      required this.orderId,
      required this.orderDetails,
      required this.orderDescription,
      required this.orderDate});

  factory ClientOrderModel.fromJson(Map<String, dynamic> res) {
    return ClientOrderModel(  
      orderId: res["id"]??'',
      userId: res["userId"]??'',
        orderName: res["orderType"]??'',
        orderDetails: res["details"]??'',
        orderDescription: res["extra_details"]??'',
        orderDate: res["date"]??"");
  }
}
