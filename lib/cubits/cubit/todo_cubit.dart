import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());

  List<String> names = [
    "Fares",
    "Ahmed",
    "Ali",
    "Mohamed",
  ];

  void addTodo({required String name}) {
    names.add(name);
    emit(ToDoChanged());
  }
  void removeTodo({required int index}) {
    if(index < names.length ){
    names.removeAt(index);
    emit(ToDoChanged());
      
    }
  }
}
