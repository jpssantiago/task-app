class DateProviderUtils {
  static String getFormattedDate(DateTime date) {
    DateTime current = DateTime.now();

    if (date.year == current.year &&
        date.month == current.month &&
        date.day == current.day - 1) {
      return 'Ontem';
    }

    if (date.year == current.year &&
        date.month == current.month &&
        date.day == current.day) {
      return 'Hoje';
    }

    if (date.year == current.year &&
        date.month == current.month &&
        date.day == current.day + 1) {
      return 'Amanhã';
    }

    return date.day.toString();
  }
}
