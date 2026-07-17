import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_list.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_model.dart';

abstract class NavBarState {
  NavigationBarModel? item;
}

class NavBarInitialState extends NavBarState {
  final NavigationBarModel item = NavigationBarList.items[0];
}

class NavBarMessagesState extends NavBarState {
  final NavigationBarModel item = NavigationBarList.items[1];
}

class NavBarMyPostsState extends NavBarState {
  final NavigationBarModel item = NavigationBarList.items[2];
}

class NavBarProfileState extends NavBarState {
  final NavigationBarModel item = NavigationBarList.items[3];
}
