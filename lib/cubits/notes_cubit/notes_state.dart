part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {
  final List<NoteModel> notes;
  AddNoteSuccess(this.notes);
}

class AddNoteFailure extends NotesState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
