import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _notifications.length,
      itemBuilder: (context, index) {
        final notification = _notifications[index];
        return notif.Notification(
          name: notification.name,
          post: notification.post,
          description: notification.description,
        );
      },
      separatorBuilder: (context, index) =>
          const Divider(height: 1, color: FB_SOFT_PRIMARY),
    );
  }
}

const List<_NotificationData> _notifications = [
  _NotificationData(
    name: 'JB Hipolito',
    post: 'A little progress every day adds up to big results.',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Ralph Amarillo',
    post: 'Isang masayang araw kasama ang komunidad.',
    description: 'liked your post',
  ),
  _NotificationData(
    name: 'Ethan Leigh Dela Torre',
    post: 'Taking a break and enjoying the little things.',
    description: 'commented on your post',
  ),
  _NotificationData(
    name: 'JP De Jesus',
    post: 'Salamat sa lahat ng patuloy na nakikiisa.',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Jesper Sev',
    post: 'What is everyone listening to today?',
    description: 'liked your post',
  ),
  _NotificationData(
    name: 'Ron Jacob',
    post: 'Small acts of kindness make a big difference.',
    description: 'commented on your post',
  ),
  _NotificationData(
    name: 'Marky',
    post: 'Throwback to one of my favorite moments.',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Hallee Ancheta',
    post: 'Keep showing up for one another.',
    description: 'liked your post',
  ),
  _NotificationData(
    name: 'Leni Robredo',
    post: 'OTW para iligtas ang mundo',
    description: 'commented on your post',
  ),
  _NotificationData(
    name: 'Mark Aeron Palileo',
    post: 'HI GUYSSSS',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'JB Hipolito',
    post: 'A little progress every day adds up to big results.',
    description: 'received a new comment',
  ),
  _NotificationData(
    name: 'Ralph Amarillo',
    post: 'Isang masayang araw kasama ang komunidad.',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Ethan Leigh Dela Torre',
    post: 'Taking a break and enjoying the little things.',
    description: 'liked your post',
  ),
  _NotificationData(
    name: 'JP De Jesus',
    post: 'Salamat sa lahat ng patuloy na nakikiisa.',
    description: 'received a new comment',
  ),
  _NotificationData(
    name: 'Jesper Sev',
    post: 'What is everyone listening to today?',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Ron Jacob',
    post: 'Small acts of kindness make a big difference.',
    description: 'received a new comment',
  ),
  _NotificationData(
    name: 'Marky',
    post: 'Throwback to one of my favorite moments.',
    description: 'liked your post',
  ),
  _NotificationData(
    name: 'Hallee Ancheta',
    post: 'Keep showing up for one another.',
    description: 'received a new comment',
  ),
  _NotificationData(
    name: 'Leni Robredo',
    post: 'OTW para iligtas ang mundo',
    description: 'shared a post',
  ),
  _NotificationData(
    name: 'Mark Aeron Palileo',
    post: 'HI GUYSSSS',
    description: 'received a new comment',
  ),
];

class _NotificationData {
  const _NotificationData({
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;
}
