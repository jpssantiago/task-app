class Task {
  String title;
  DateTime initialDate;
  DateTime finalDate;
  TaskStatus status;

  Task({
    this.title,
    this.initialDate,
    this.finalDate,
    this.status,
  });

  int _getMinutesLeft(DateTime date) {
    return finalDate.difference(date).inMinutes;
  }

  int _getHoursLeft(DateTime date) {
    return finalDate.difference(date).inHours;
  }

  int _getDaysLeft(DateTime date) {
    return finalDate.difference(date).inDays;
  }

  String getTimeLeft(DateTime date) {
    int minutes = _getMinutesLeft(date);
    int hours = _getHoursLeft(date);
    int days = _getDaysLeft(date);

    if (hours > 24) {
      return '${days}d';
    }

    if (minutes > 60) {
      return '${hours}h';
    }

    return '${minutes}m';
  }

  static Task createTask(String title) {
    return Task(
      title: title,
      initialDate: DateTime.now(),
      finalDate: null,
      status: TaskStatus.active,
    );
  }
}

enum TaskStatus {
  active,
  delayed,
  completed,
}
