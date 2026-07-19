import 'package:bloc/bloc.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_state.dart';

class AddPostTypeCubit extends Cubit<AddPostTypeState> {
  AddPostTypeCubit() : super(AddPostLost());
  bool lostTypeSelected = true;

  void toggleAddPostType({required bool type}) {
    lostTypeSelected = type;
    switch (lostTypeSelected) {
      case true:
        emit(AddPostLost());
        break;
      case false:
        emit(AddPostFound());
        break;
    }
  }
}
