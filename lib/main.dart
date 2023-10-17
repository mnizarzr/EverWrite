import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'routes/routes.dart';
import 'ui/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  runApp(Main(initialRoute: Routes.initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      title: 'EverWrite',
      initialRoute: initialRoute,
      getPages: Routes.routes,
      theme: AppTheme.standard,
    );
  }
}
