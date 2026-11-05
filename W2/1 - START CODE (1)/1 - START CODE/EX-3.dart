class MyDuration {
  final int milliseconds;

  // Constructor
  MyDuration(this.milliseconds);

  // Named constructor: hours
  MyDuration.fromHours(int hours) : milliseconds = hours * 60 * 60 * 1000;

  // Named constructor: minutes
  MyDuration.fromMinutes(int minutes) : milliseconds = minutes * 60 * 1000;

  // Add two durations
  MyDuration operator +(MyDuration other) {
    return MyDuration(milliseconds + other.milliseconds);
  }

  // Subtract two durations
  MyDuration operator -(MyDuration other) {
    if (milliseconds < other.milliseconds) {
      throw Exception("Duration cannot be negative");
    }

    return MyDuration(milliseconds - other.milliseconds);
  }
  

  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;

    return '$hours hours, $minutes minutes, $seconds seconds';
  }

   bool operator >(MyDuration other) {
    return milliseconds > other.milliseconds;
  }

}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e); 
  }
}
