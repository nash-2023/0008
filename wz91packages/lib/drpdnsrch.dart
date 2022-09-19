import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DrbDnSrch extends StatefulWidget {
  const DrbDnSrch({super.key, required this.title});
  final String title;
  @override
  State<DrbDnSrch> createState() => _DrbDnSrchState();
}

class _DrbDnSrchState extends State<DrbDnSrch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Drop Search"),
    );
  }
}
