import 'package:logger/logger.dart';
import 'package:shell/shell.dart';

class ShellUtil {
  static Logger logger = Logger();
  static Shell shell = Shell();

  static List<String> _split(String cmd) {
    return cmd.split(' ');
  }

  static Future<void> run(String cmd) async {
    logger.d('try to execute $cmd');
    var splits = _split(cmd);
    logger.d('cmd:${splits[0]} arguments:${splits.skip(1)}');
    var result = await shell.run(splits[0], arguments: splits.skip(1));
  }

  static void navigate(String path) {
    shell.navigate(path);
  }
}
