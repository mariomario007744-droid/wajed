import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wajed/features/add_post/presentation/manager/added_image_cubit/added_image_state.dart';

class AddedImageCubit extends Cubit<AddedImageState> {
  AddedImageCubit() : super(AddedImageInitial());
  final ImagePicker picker = ImagePicker();
  List<String>? listImages;
  void getImages() async {
    final List<XFile> images = await picker.pickMultiImage();
    if (images.isNotEmpty) {
      listImages = images.map((file) => file.path).toList();
      emit(AddedListImagesState(images: listImages));
    }
  }

  void addMore() async {
    final List<XFile> images = await picker.pickMultiImage();
    if (images.isNotEmpty) {
      for (var item in images) {
        listImages?.add(item.path);
      }
      emit(AddedListImagesState(images: listImages));
    }
  }
}
