import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowDetails extends StatelessWidget {
  final String label;
  final String value;
  const RowDetails({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16, color: Colors.grey)),
        Text(value, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
      ],
    );
  }
}

List<RowDetails> deliveryDetails = [
  RowDetails(label: 'Name', value: 'Albert Stevano',),
  RowDetails(label: 'Phone No.', value: '+12 8347 2838 28',),
  RowDetails(label: 'Address', value: 'New York',),
  RowDetails(label: 'House No.', value: 'BC54 Berlin',),
  RowDetails(label: 'City', value: 'New York City',),
  ];

List<RowDetails> transactionDetails = [
  RowDetails(label: 'Cherry Healthy', value: '\$180.000',),
  RowDetails(label: 'Driver', value: '\$50.000',),
  RowDetails(label: 'Tax 10%', value: '\$80.390',),
  RowDetails(label: 'Total Price', value: '\$100.000',),
];