import 'package:flutter/material.dart';
import 'package:flutter_clone_insta/src/components/avatar_widget.dart';
import 'package:flutter_clone_insta/src/components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath:
              'https://image.rocketpunch.com/user/166846/166846_1595296071.jpg?s=200x200&t=cover',
          size: 70,
        )
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(width: 20,),
        _myStory(),
        const SizedBox(width: 5,),
        ...List.generate(
          100,
          (index) => AvatarWidget(
            type: AvatarType.TYPE1,
            thumbPath:
                'https://blog.kakaocdn.net/dn/5UYz8/btq4diRXkGE/HkHufR4G8X4bIX3h3lNjck/img.jpg',
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: ImageData(
          IconsPath.logo,
          width: 270,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconsPath.directMessage,
                width: 50,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          // _postList(),
        ],
      ),
    );
  }
}
