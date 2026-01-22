import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  
  fetchAllMethod(){
    emit(NotesLoading());
    try {
  var noteBox= Hive.box<NoteModel>('notes_box');
  
  
  emit(NotesSuccesss(notes: noteBox.values.toList()));
}  catch (e) {
  emit(NotesFailure(errorMessage: e.toString()));
}
  }
}
