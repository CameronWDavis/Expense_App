import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
<<<<<<< HEAD
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

=======
  var _enteredTitle = '';

  void _saveTileInput(String inpueValue) {
    _enteredTitle = inpueValue;
  }
>>>>>>> 8307adb4cfc730d2d7327e9942181ee0c52ff46d

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
<<<<<<< HEAD
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$',
              label: Text('Amount')),
          ),
          Row(
            children: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text); 
=======
            onChanged: _saveTileInput,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_enteredTitle);
>>>>>>> 8307adb4cfc730d2d7327e9942181ee0c52ff46d
                },
                child: const Text("Save Expenses"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
