# Expense Tracker

A beautiful and intuitive Flutter expense tracking application that helps you manage and visualize your daily expenses with an elegant chart interface.

## Features

- **Add Expenses**: Quickly add new expenses with title, amount, category, and date
- **Expense Categories**: Organize expenses into categories (Food, Travel, Leisure, Work, Other)
- **Visual Chart**: Interactive bar chart showing spending distribution across categories
- **Swipe to Delete**: Remove expenses with a simple swipe gesture
- **Undo Deletion**: Accidentally deleted an expense? Undo it with a single tap
- **Date Formatting**: Clean, readable date display for all transactions
- **Responsive UI**: Adapts beautifully to different screen sizes

## Screenshots

### Main Screen
![Expense Tracker Main Screen](screenshots/main_screen.png)

The main screen displays a visual chart of your spending patterns across different categories, along with a scrollable list of all your expenses.

### Add New Expense
![Add Expense Form](screenshots/add_expense.png)

Easily add new expenses through an intuitive modal form with category selection and date picker.

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Installation

1. Clone the repository:
```bash
git clone <your-repository-url>
cd "Expense App/expensetracker"
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                           # Application entry point
├── models/
│   └── expense.dart                    # Expense data model and categories
├── widget/
│   ├── expenses.dart                   # Main expenses screen
│   ├── chart/
│   │   ├── chart.dart                  # Expense chart widget
│   │   └── chart_bar.dart              # Individual chart bar component
│   └── expenses_list/
│       ├── expenses_list.dart          # List of expenses
│       ├── expense_item.dart           # Individual expense item
│       └── new_expense.dart            # Add expense form
```

## How to Use

### Adding an Expense

1. Tap the **+** button in the top-right corner
2. Enter the expense title (e.g., "Burger", "Airplane Tickets")
3. Enter the amount
4. Select a category from the dropdown (Food, Travel, Leisure, Work, Other)
5. Pick a date using the date picker
6. Tap **Save Expenses**

### Deleting an Expense

1. Swipe left on any expense item in the list
2. The expense will be removed
3. A snackbar appears with an **Undo** option if you deleted by mistake

### Viewing Statistics

The chart at the top of the main screen automatically updates to show:
- Spending distribution across categories
- Visual comparison of expenses
- Category-specific totals

## Dependencies

This project uses the following packages:

- **uuid**: Generate unique IDs for each expense
- **intl**: Format dates and numbers
- **flutter/material**: UI components and theming

## Features in Detail

### Expense Categories

The app supports five expense categories, each with its own icon:

- **Food** (🍔): Meals, groceries, dining out
- **Travel** (✈️): Flights, transportation, trips
- **Leisure** (🎬): Entertainment, movies, hobbies
- **Work** (💼): Work-related expenses
- **Other** (?): Miscellaneous expenses

### Data Model

Each expense contains:
- **ID**: Unique identifier (auto-generated)
- **Title**: Description of the expense
- **Amount**: Cost in dollars
- **Date**: When the expense occurred
- **Category**: Type of expense

## Customization

### Adding New Categories

To add new categories, modify [lib/models/expense.dart](expensetracker/lib/models/expense.dart):

```dart
enum Category { food, travel, leisure, work, other, newCategory }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight,
  // ... add your new category icon
  Category.newCategory: Icons.your_icon,
};
```

### Changing Theme Colors

Modify the theme in [lib/main.dart](expensetracker/lib/main.dart) to customize the app's appearance.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

Built with Flutter and Material Design principles for a smooth, native-like experience on both iOS and Android.

---

**Note**: To add the screenshots, create a `screenshots` folder in the root directory and place your images there as:
- `main_screen.png` - The first screenshot showing the expense list and chart
- `add_expense.png` - The second screenshot showing the add expense form
