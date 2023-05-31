import 'all_export.dart';
import 'core/constant/language/localization/changelocal.dart';
import 'core/constant/language/localization/translate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}
// return ScreenUtilInit(
//       useInheritedMediaQuery: true,
//       designSize: const Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return GetMaterialApp(

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: MyTranslation(),
          debugShowCheckedModeBanner: false,
          fallbackLocale: const Locale('en', 'ar'),

          title: 'Exfai',
          locale: controller.language,
          theme: controller.appTheme,
          initialBinding: InitialBindings(),
          // routes: routes,
          getPages: routes,
        );
      },
    );
  }
}
