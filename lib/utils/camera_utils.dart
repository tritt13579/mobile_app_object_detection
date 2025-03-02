import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class CameraUtils {
  static Future<String> savePicture(XFile picture) async {
    final directory = await getTemporaryDirectory();
    final filename = '${DateTime.now().millisecondsSinceEpoch}.png';
    final path = join(directory.path, filename);

    await picture.saveTo(path);
    return path;
  }
}