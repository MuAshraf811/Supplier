
class QuotationModel {
  final String quotationDescription;
  final String quantity;
  final String rate;
  final String amount;
  final String vat;
  final String total;
  final String orderNumber;
  final String quotationDate;
  final String supplierId;
  final String supplierName;

  QuotationModel(
      {required this.quotationDescription,
      required this.quantity,
      required this.rate,
      required this.amount,
      required this.vat,
      required this.total,
      required this.orderNumber,
      required this.quotationDate,
      required this.supplierId,
      required this.supplierName});

  factory QuotationModel.fromJson(Map<String, dynamic> res) {
    return QuotationModel(
        quotationDescription: res["quotationDescription"],
        quantity: res["quantity"],
        rate: res["rate"],
        amount: res["amount"],
        vat: res["vat"],
        total: res["total"],
        orderNumber: res["orderNumber"],
        quotationDate:res["quotationDate"],
        supplierId: res["supplierId"],
        supplierName: res["supplierId"]);
  }
}
