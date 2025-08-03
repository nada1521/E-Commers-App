class AuthErrorHandler {
  /// ترجع رسالة واحدة جاهزة للعرض في SnackBar
  static String extractSingleMessage(dynamic response) {
    try {
      if (response == null) return 'حدث خطأ غير متوقع';

      if (response is Map<String, dynamic>) {
        // رسالة عامة
        if (response['message'] != null && response['message'] != 'fail') {
          return response['message'].toString();
        }

        if (response['statusMsg'] != null &&
            response['statusMsg'].toString() != 'fail') {
          return response['statusMsg'].toString();
        }

        // خطأ داخل errors -> msg
        if (response['errors'] != null &&
            response['errors'] is Map<String, dynamic>) {
          final errors = response['errors'] as Map<String, dynamic>;

          if (errors['msg'] != null) {
            return errors['msg'].toString();
          }

          // fallback لعرض قيمة أي رسالة داخل errors
          return errors.values.first.toString();
        }
      }

      return 'حدث خطأ غير معروف، حاول مرة أخرى.';
    } catch (_) {
      return 'فشل في معالجة الخطأ.';
    }
  }

  /// ترجع جميع الأخطاء المرتبطة بالحقول (مثلاً email, password...)
  static Map<String, String> extractFieldErrors(dynamic response) {
    final Map<String, String> fieldErrors = {};

    try {
      if (response is Map<String, dynamic> &&
          response['errors'] != null &&
          response['errors'] is Map<String, dynamic>) {
        final errors = response['errors'] as Map<String, dynamic>;

        if (errors.containsKey('param') && errors.containsKey('msg')) {
          fieldErrors[errors['param'].toString()] = errors['msg'].toString();
        }
      }
    } catch (_) {
      // لا تفعل شيئًا، نرجع الماب فاضية
    }

    return fieldErrors;
  }
}
