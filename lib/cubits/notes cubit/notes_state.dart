part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoadin extends NotesState {}

class NotesSuccess extends NotesState {
 final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFaliure extends NotesState {
  final String reeMessage;

  NotesFaliure(this.reeMessage);
}
