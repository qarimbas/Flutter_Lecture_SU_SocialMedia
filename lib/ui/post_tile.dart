import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/post.dart';
import 'package:flutter_application_2/util/colors.dart';

class PostTile extends StatelessWidget {
  final Post post;
  //final void Function() delete;
  final VoidCallback delete;

  PostTile({required this.post, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${post.text}',
              style: TextStyle(
                fontSize: 17,
                color: AppColors.textColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Text(
                    '${post.date}',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.subtitleColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.thumb_up,
                    size: 16,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    '${post.likes}',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.subtitleColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.comment,
                    size: 16,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    '${post.comments}',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.subtitleColor,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.delete,
                      size: 13,
                      color: Colors.red,
                    ),
                    onPressed: delete,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
