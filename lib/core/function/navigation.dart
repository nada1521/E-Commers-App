import 'package:go_router/go_router.dart';


void navigationpushReplacemen(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}

void navigationPushNamed(context, String path) {
  GoRouter.of(context).pushNamed(path);
}

 navigationPop(context) {
  GoRouter.of(context).pop();
}