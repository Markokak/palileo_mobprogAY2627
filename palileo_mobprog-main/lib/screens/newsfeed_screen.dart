import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.content,
          numOfLikes: post.likes,
          date: post.date,
          hasImage: post.hasImage,
          imageUrl: post.imageUrl,
          avatarUrl: post.avatarUrl,
        );
      },
    );
  }
}

const List<_Post> _posts = [
  _Post(
    userName: 'Mark Aeron Palileo',
    content: 'HI GUYSSSS',
    likes: 347,
    date: 'November 26, 2026',
    avatarUrl: 'assets/images/markprofile.jpg',
  ),
  _Post(
    userName: 'Leni Robredo',
    content: 'OTW para iligtas ang mundo',
    likes: 450,
    date: 'November 25, 2026',
    hasImage: true,
    imageUrl: 'assets/images/otw.jpg',
    avatarUrl: 'assets/images/leni.jpg',
  ),
  _Post(
    userName: 'JB Hipolito',
    content: 'A little progress every day adds up to big results.',
    likes: 128,
    date: 'November 24, 2026',
    hasImage: true,
    imageUrl: 'assets/images/otw.jpg',
    avatarUrl: 'assets/images/hipolito.jpg',
  ),
  _Post(
    userName: 'Ralph Amarillo',
    content: 'Isang masayang araw kasama ang komunidad.',
    likes: 276,
    date: 'November 23, 2026',
    hasImage: true,
    imageUrl: 'assets/images/owl.jpg',
    avatarUrl: 'assets/images/amarillo.jpg',
  ),
  _Post(
    userName: 'Ethan Leigh Dela Torre',
    content: 'Taking a break and enjoying the little things.',
    likes: 89,
    date: 'November 22, 2026',
    avatarUrl: 'assets/images/dela torre.jpg',
  ),
  _Post(
    userName: 'JP De Jesus',
    content: 'Salamat sa lahat ng patuloy na nakikiisa.',
    likes: 612,
    date: 'November 21, 2026',
    hasImage: true,
    imageUrl: 'assets/images/markpost.png',
    avatarUrl: 'assets/images/de jesus.jpg',
  ),
  _Post(
    userName: 'Jesper Sev',
    content: 'What is everyone listening to today?',
    likes: 98,
    date: 'November 20, 2026',
    avatarUrl: 'assets/images/sev.jpg',
  ),
  _Post(
    userName: 'Ron Jacob',
    content: 'Small acts of kindness make a big difference.',
    likes: 302,
    date: 'November 19, 2026',
    hasImage: true,
    imageUrl: 'assets/images/otw.jpg',
    avatarUrl: 'assets/images/jacob.jpg',
  ),
  _Post(
    userName: 'Marky',
    content: 'Throwback to one of my favorite moments.',
    likes: 174,
    date: 'November 18, 2026',
    hasImage: true,
    imageUrl: 'assets/images/markpost.png',
    avatarUrl: 'assets/images/marky.jpg',
  ),
  _Post(
    userName: 'Hallee Ancheta',
    content: 'Keep showing up for one another.',
    likes: 521,
    date: 'November 17, 2026',
    avatarUrl: 'assets/images/ancheta.jpg',
  ),
];

class _Post {
  const _Post({
    required this.userName,
    required this.content,
    required this.likes,
    required this.date,
    this.hasImage = false,
    this.imageUrl,
    this.avatarUrl,
  });

  final String userName;
  final String content;
  final int likes;
  final String date;
  final bool hasImage;
  final String? imageUrl;
  final String? avatarUrl;
}
