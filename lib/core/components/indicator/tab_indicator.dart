// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TabIndicator extends StatefulWidget {
  final int selectedIndex;
  final int itemLength;

  const TabIndicator(
      {super.key, required this.selectedIndex, required this.itemLength});
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.itemLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: _tabController,
      //selectedColor: context.colorScheme.onBackground, Kartal did not work. some issue
    );
  }
}
