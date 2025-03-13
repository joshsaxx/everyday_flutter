import 'package:flutter/material.dart';

class Defaults {
  static const Color drawerItemColor = Colors.blueGrey;
  static final Color? drawerSelectedTileColor = Colors.blue[100];
  static final Color? drawerItemSelectedColor = Colors.blue[700];

  static final drawerItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final drawerItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
