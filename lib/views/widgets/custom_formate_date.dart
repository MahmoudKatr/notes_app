import 'package:intl/intl.dart';

String formatDate(dynamic date) {
  if (date is DateTime) {
    return DateFormat('MMMM d, y').format(date);
  } else if (date is String) {
    try {
      DateTime parsedDate = DateTime.parse(date);
      return DateFormat('MMMM d, y').format(parsedDate);
    } catch (e) {
      return 'Invalid date';
    }
  } else {
    return 'Invalid date';
  }
}
