import 'package:flutter/material.dart';

class TaskCardStatus {
  final IconData icon;
  final String text;

  const TaskCardStatus(this.icon, this.text);

  static const pending = TaskCardStatus(Icons.access_time, 'Pending');
  static const completed = TaskCardStatus(Icons.check_circle, 'Completed');
  static const disabled = TaskCardStatus(Icons.cancel, 'Disabled');
}