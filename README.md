# Project Title

A Flutter application with a structured architecture leveraging Cubit for state management, modularized components, and reusable widgets.

## Features

- **State Management:** Implemented using Cubit.
- **Modular Architecture:** Clean separation of concerns with folders for cubits, models, views, and widgets.
- **Custom Widgets:** Reusable widgets for efficient UI building.
- **Ease of Customization:** Modular structure allows for easy addition and modification of features.

## Project Structure

```plaintext
lib/
├── constants.dart                # Application constants
├── main.dart                    # Entry point of the application
├── simple_bloc_observer.dart    # Custom observer for Bloc
├── cubits/                      # State management logic
│   ├── add_note_cubit/
│   │   ├── add_note_cubit.dart
│   │   └── add_note_state.dart
│   └── notes_cubit/
│       ├── notes_cubit.dart
│       └── notes_state.dart
├── models/                      # Data models
│   ├── note_model.dart
│   └── note_model.g.dart
├── views/                       # UI components
│   ├── edit_note_view.dart
│   ├── notes_view.dart
│   └── widgets/
│       ├── add_note_button_sheet.dart
│       ├── add_note_form.dart
│       ├── custom_app_bar.dart
│       ├── custom_bottom.dart
│       ├── custom_formate_date.dart
│       ├── custom_note_item.dart
│       ├── custom_search_icon.dart
│       ├── custom_text_field.dart
│       ├── edit_note_body.dart
│       ├── note_view_body.dart
│       └── notes_list_view.dart
```

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/repository-name.git
    ```

2. Navigate to the project directory:

    ```bash
    cd repository-name
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the application:

    ```bash
    flutter run
    ```

## Usage

- **Adding Notes:** Add notes using the form in the application.
- **Editing Notes:** Edit existing notes through the dedicated edit view.
- **List View:** Browse notes with an easy-to-use list view.

## Contribution

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature/bug fix:

    ```bash
    git checkout -b feature-name
    ```

3. Commit your changes:

    ```bash
    git commit -m "Description of changes"
    ```

4. Push to your branch:

    ```bash
    git push origin feature-name
    ```

5. Create a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
