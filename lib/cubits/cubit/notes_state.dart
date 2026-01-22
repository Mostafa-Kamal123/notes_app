part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSuccesss extends NotesState {
  final List<NoteModel> notes;

  NotesSuccesss({required this.notes});
}
final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}

