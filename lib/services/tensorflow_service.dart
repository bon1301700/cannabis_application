import 'dart:io';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';

class TensorFlowService {
  loadModel() async {
    Tflite.close();
    await Tflite.loadModel(
        model: "assets/model/tf_lite_model(CNN_30).tflite",
        labels: "assets/model/labels.txt");
  }

  Future<List<dynamic>?> runModelOnFrame(CameraImage image) async {
    var recognitions = await Tflite.runModelOnFrame(
        bytesList: image.planes.map((plane) {
          return plane.bytes;
        }).toList(),
        imageHeight: image.height,
        imageWidth: image.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 4,
        threshold: 0.5,
        asynch: true);
    return recognitions;
  }

  Future<List<dynamic>?> runModelOnImage(File image) async {
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 4,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    return recognitions;
  }
}
