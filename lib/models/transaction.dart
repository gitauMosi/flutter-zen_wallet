// ignore_for_file: public_member_api_docs, sort_constructors_first
class Transaction {
  String senderid;
  String receiverid;
  String date;
  double amount;
  Transaction({
    required this.senderid,
    required this.receiverid,
    required this.date,
    required this.amount,
  });
}

final List<Transaction> transactionList = [
  Transaction(senderid: '2', receiverid: 'xyz Company', date: "Feb 10", amount: 123.00),
  Transaction(senderid: '1', receiverid: 'James Gloom', date: "Feb 9", amount: 50.00),
  Transaction(senderid: '1', receiverid: 'Dianna Rusell', date: "Feb 9", amount: 35.00),
  Transaction(senderid: '1', receiverid: 'Cameron Williamson', date: "Feb 9", amount: 64.00)

];
