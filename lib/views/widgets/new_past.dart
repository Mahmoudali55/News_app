// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/models/articel_model.dart';

class NewPast extends StatelessWidget {
  const NewPast({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )
                : Image.asset('assets/img4.jpeg')),
        SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        articleModel.subTitle != null
            ? Text(
                articleModel.subTitle!,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              )
            : Text('sub titel'),
      ],
    );
  }
}
