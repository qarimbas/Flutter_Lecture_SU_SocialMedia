import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/post.dart';
import 'package:flutter_application_2/util/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  //Post item1 = Post(text: 'first post', date: '14th July 2021', likes: 5);
  //Post item2 = Post.comments(comments: 5);

  late int postCount = 0;
  void buttonPressed() {
    setState(() {
      postCount++;
      print('POST VALUE: $postCount');
    });
  }

  @override
  void initState() {
    super.initState();
    postCount = 0;
    print('INIT STATE: $postCount');
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD: $postCount');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Center(
          child: Text(
            'PROFILE',
            style: TextStyle(
              color: AppColors.appBarTextColor,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttonPressed,
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              profileTopView(),
              Divider(
                color: AppColors.primaryColor,
                height: 32,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        postCount.toString(),
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headingColor,
                        ),
                      ),
                      Text(
                        'posts',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: AppColors.headingColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '12345',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headingColor,
                        ),
                      ),
                      Text(
                        'followers',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: AppColors.headingColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '12345',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headingColor,
                        ),
                      ),
                      Text(
                        'following',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: AppColors.headingColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: AppColors.primaryColor,
                height: 32,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row profileTopView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 44,
          backgroundColor: AppColors.primaryColor,
          foregroundImage: NetworkImage(
              'https://yt3.ggpht.com/ytc/AKedOLQ2b5pPZ1QCN6kwiRHUSpAzovaHqV73_L20NYzi=s176-c-k-c0x00ffffff-no-rj-mo'),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'qarimbasGTA',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.headingColor,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.alternate_email,
                  color: AppColors.primaryColor,
                ),
                Text(
                  'KKURT',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headingColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
