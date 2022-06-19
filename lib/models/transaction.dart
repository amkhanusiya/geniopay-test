class Transaction {
  final String icon;
  final String status;
  final String date;
  final String detail;
  final String amount;

  Transaction({
    required this.amount,
    required this.date,
    required this.detail,
    required this.icon,
    required this.status,
  });
}
