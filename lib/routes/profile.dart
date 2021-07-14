import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/post.dart';
import 'package:flutter_application_2/util/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  //Post item1 = Post(text: 'first post', date: '14th July 2021', likes: 5);
  //Post item2 = Post.comments(comments: 5);
  

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'PROFILE',
          style: TextStyle(
            color: AppColors.appBarTextColor,
          ),
          
        ),
      ),
    );
      
    
  }
}