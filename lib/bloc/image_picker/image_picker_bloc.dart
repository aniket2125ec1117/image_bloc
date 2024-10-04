import 'package:bloc/bloc.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_event.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_state.dart';
import 'package:image_bloc/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerStates> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerStates()) {
    on<CameraPicker>(_cameraCapture);
  }

  void _cameraCapture(
      CameraPicker events, Emitter<ImagePickerStates> emit) async {
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }
}
