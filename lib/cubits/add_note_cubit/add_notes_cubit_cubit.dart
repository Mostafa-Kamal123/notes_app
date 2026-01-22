import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());
  addNote(NoteModel note)async{
    emit(AddNotesCubitLoading());
    try {
  var noteBox= Hive.box<NoteModel>('notes_box');
  
  await noteBox.add(note);
  emit(AddNotesCubitSuccess());
}  catch (e) {
  emit(AddNotesCubitFailure(errorMessage: e.toString()));
}
    
  }
}
