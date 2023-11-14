// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 7,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/img.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              'mohud',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'mohud ali',
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ],
        );
      }),
    );
  }
}
