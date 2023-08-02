import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();

class ImagePickerModel {
  Uint8List? imageUint8List;
  String? imagePath;
  String? imageFileName;
  String? imageUrl;
  String? imageUUID;

  bool? primary;

  ImagePickerModel(
      {this.imageUint8List,
      this.imagePath,
      this.imageFileName,
      this.primary,
      this.imageUrl,
      this.imageUUID});
}

Future<ImagePickerModel?> imagePicker(BuildContext context) async {
  XFile? imageFile =
      await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

  // CroppedFile? croppedFile = await imageCropper(imageFile, context);

  var imageBytes = await imageFile?.readAsBytes();

  return imageFile != null
      ? ImagePickerModel(
          imageUint8List: imageBytes,
          imagePath: imageFile.path,
          imageFileName: imageFile.name,
        )
      : null;
}
