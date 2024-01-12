import 'package:flutter/material.dart';

class MyRefreshableListView extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  MyRefreshableListView({
    required this.onRefresh,
    required this.itemBuilder,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
