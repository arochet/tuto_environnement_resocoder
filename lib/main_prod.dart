import 'package:tuto_environnement_codemagic/environnement.dart';
import 'package:tuto_environnement_codemagic/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
