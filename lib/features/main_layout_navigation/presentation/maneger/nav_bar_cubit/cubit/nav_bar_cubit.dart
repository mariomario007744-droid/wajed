import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/main_layout_navigation/presentation/maneger/nav_bar_cubit/cubit/nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitialState());
  int isSelected = 0;
  void selectTab({required int index}) {
    isSelected = index;
    switch (index) {
      case 0:
        emit(NavBarInitialState());
        break;
      case 1:
        emit(NavBarMessagesState());
        break;
      case 2:
        emit(NavBarMyPostsState());
        break;
      case 3:
        emit(NavBarProfileState());
        break;
    }
  }
}
