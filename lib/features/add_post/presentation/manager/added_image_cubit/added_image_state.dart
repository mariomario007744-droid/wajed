
abstract class AddedImageState {}

final class AddedImageInitial extends AddedImageState {}

class AddedListImagesState extends AddedImageState {
  AddedListImagesState({this.images});
  List<String>? images;
}
