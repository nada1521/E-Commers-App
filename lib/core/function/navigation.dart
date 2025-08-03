import 'package:go_router/go_router.dart';


void navigationpushReplacemen(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}

void navigationPushNamed(context, String path ,{Object? extra}) {
  GoRouter.of(context).pushNamed(path, extra: extra);
}

 navigationPop(context) {
  GoRouter.of(context).pop();
}