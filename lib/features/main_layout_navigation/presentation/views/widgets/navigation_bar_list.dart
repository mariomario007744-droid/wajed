import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chat_list.dart';
import 'package:wajed/features/home/presentation/views/widget/home.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/navigation_bar_model.dart';
import 'package:wajed/features/my_posts/presentation/views/widgets/my_posts_list.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile.dart';

abstract class NavigationBarList {
  static final List<NavigationBarModel> items = [
    NavigationBarModel(
      icon: AssetsData.homeNavBarIcon,
      label: 'Home',
      body: Home(),
    ),
    NavigationBarModel(
      icon: AssetsData.chatNavBarIcon,
      label: 'Messages',
      body: ChatList(),
      badgeCount: 2,
    ),
    NavigationBarModel(
      icon: AssetsData.myPostsNavBarIcon,
      label: 'My posts',
      body: MyPostsList(),

    ),
    NavigationBarModel(
      icon: AssetsData.myProfileNavBarIcon,
      label: 'Profile',
      body: MyProfile(),
    ),
  ];
}
