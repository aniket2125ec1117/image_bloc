import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_event.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_state.dart';

class ImagePractice extends StatelessWidget {
  const ImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image_Bloc"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerStates>(
            builder: (context, state) {
          return state.file == null
              ? GestureDetector(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(CameraPicker());
                  },
                  child: const CircleAvatar(
                    child: Icon(Icons.camera),
                  ))
              : Image.file(File(state.file!.path.toString()));
        }),
      ),
    );
  }
}
