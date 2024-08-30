import 'package:intl/intl.dart';

String formatDate() {
  var currentDate = DateTime.now();
  var formattedDate = DateFormat('EEEE, dd/MM/yyyy').format(currentDate);
  return formattedDate;
}
