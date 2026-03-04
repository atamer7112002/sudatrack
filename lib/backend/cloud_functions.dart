import 'package:cloud_firestore/cloud_firestore.dart';

Future<Map<String, dynamic>> callGetNextReceiptNumber() async {
  try {
    final firestore = FirebaseFirestore.instance;
    final counterRef = firestore.doc('counters/shipmentCounter');

    final newCounter = await firestore.runTransaction<int>((transaction) async {
      final counterDoc = await transaction.get(counterRef);

      int currentValue = 0;
      if (counterDoc.exists) {
        currentValue = (counterDoc.data()?['shipmentCounter'] as int?) ?? 0;
      }

      final nextValue = currentValue + 1;

      transaction.set(
        counterRef,
        {'shipmentCounter': nextValue},
        SetOptions(merge: true),
      );

      return nextValue;
    });

    final receiptNumber = '00$newCounter';

    return {'receiptNumber': receiptNumber, 'counter': newCounter};
  } catch (e) {
    print('Error generating receipt number: $e');
    rethrow;
  }
}
