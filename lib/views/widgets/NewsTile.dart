// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/views/widgets/new_past.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: NewPast(),
                )));
  }
}
