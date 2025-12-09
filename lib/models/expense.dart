<<<<<<< HEAD
 import 'package:uuid/uuid.dart';
=======
import 'package:uuid/uuid.dart';
>>>>>>> 8307adb4cfc730d2d7327e9942181ee0c52ff46d
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const uuid = Uuid(); //create a unique ID for each expense

final formatter = DateFormat.yMd(); //date formatter

enum Category { food, travel, leisure, work, other }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
  Category.other: Icons.question_mark_outlined,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //assign a unique ID when creating an expense

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
