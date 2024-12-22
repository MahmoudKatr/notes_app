# Notes App

This is a Flutter-based note-taking application designed for efficient state management and a user-friendly interface.

## Features

- **Add Notes**: Quickly add notes with custom titles and descriptions.
- **Edit Notes**: Modify existing notes seamlessly.
- **Delete Notes**: Remove notes you no longer need.
- **Color Coding**: Assign colors to notes for better organization.
- **Search Functionality**: Easily find notes using the search feature.

## Project Structure

The project follows a modular structure for maintainability and scalability:

```
lib/
├── cubits/                        # State management using Cubit
│   ├── add_note_cubit/
│   │   ├── add_note_cubit.dart    # Handles adding new notes
│   │   └── add_note_state.dart    # States for the add note feature
│   └── notes_cubit/
│       ├── notes_cubit.dart       # Handles overall notes state
│       └── notes_state.dart       # States for managing notes
├── models/                        # Data models
│   ├── note_model.dart            # Data structure for a note
│   └── note_model.g.dart          # Generated code for JSON serialization/deserialization
├── views/                         # UI components
│   ├── widgets/                   # Reusable UI components
│   │   ├── add_note_button_sheet.dart # Bottom sheet for adding a new note
│   │   ├── add_note_form.dart     # Form for inputting note details
│   │   ├── colors_list_view.dart  # Widget for selecting note colors
│   │   ├── custom_app_bar.dart    # Custom app bar widget
│   │   ├── custom_bottom.dart     # Custom bottom bar for the app
│   │   ├── custom_formate_date.dart # Utility to format dates
│   │   ├── custom_search_icon.dart # Search icon with functionality
│   │   ├── custom_text_field.dart # Custom text input field
│   │   ├── edit_note_body.dart    # Body content for editing a note
│   │   ├── note_item.dart         # Widget displaying a single note
│   │   ├── note_view_body.dart    # Body content of the main notes view
│   │   └── notes_list_view.dart   # Widget displaying a list of notes
│   ├── edit_note_view.dart        # Screen for editing a note
│   └── notes_view.dart            # Main screen displaying the list of notes
├── constants.dart                 # Global constants for the app
├── main.dart                      # Entry point of the application
├── simple_bloc_observer.dart      # Bloc observer for debugging state changes
```

### Detailed Explanation

#### State Management (Cubit)
- **Cubit** is used for managing the state of the application. Each feature (e.g., adding notes, managing notes) has its own Cubit and corresponding states.
  - `add_note_cubit.dart` and `add_note_state.dart`: Manage the addition of new notes, including validation and submission.
  - `notes_cubit.dart` and `notes_state.dart`: Handle fetching, updating, and deleting notes.

#### Models
- `note_model.dart`: Defines the structure of a note, including fields like title, description, color, and timestamp.
- `note_model.g.dart`: Contains code generated for JSON serialization and deserialization, enabling seamless data storage and retrieval.

#### Views
- **Main View (`notes_view.dart`)**: Displays a list of all notes and provides navigation options.
- **Edit View (`edit_note_view.dart`)**: Allows users to edit the details of an existing note.

#### Widgets
- **Reusable Widgets**: Modular components like `add_note_form`, `colors_list_view`, and `custom_text_field` ensure consistency and reduce code duplication.
- **Custom App Bar**: Provides a unique, application-specific app bar.
- **Bottom Sheet**: Implements a slide-up interface for adding new notes.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- [Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/notes-app.git
   cd notes-app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Screenshots

*(Add screenshots or GIFs of the application here to showcase its features.)*

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature description"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Flutter](https://flutter.dev/) for providing a great framework.
- The open-source community for inspiration and support.
