import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/post.dart';
import 'package:flutter_application_2/ui/post_tile.dart';
import 'package:flutter_application_2/util/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late int postCount = 0;

  List<Post> posts = [
    Post(text: 'Hello World 1', date: '19 March', likes: 30, comments: 10),
    Post(text: 'Hello World 2', date: '18 March', likes: 20, comments: 20),
    Post(text: 'Hello World 3', date: '17 March', likes: 10, comments: 30),
  ];

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
    postCount = posts.length;
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
        child: Icon(Icons.add),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '$postCount',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        'posts',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        '12345',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        'followers',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColors.textColor,
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
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        'following',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColors.textColor,
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
              Column(
                children: posts
                    .map((post) => PostTile(
                        post: post,
                        delete: () {
                          setState(() {
                            posts.remove(post);
                          });
                        }))
                    .toList(),
              )
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
                  size: 17,
                ),
                Text(
                  'KKURT',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: AppColors.textColor,
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
