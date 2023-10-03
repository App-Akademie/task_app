/// returns a double value between 0 and 1 representing the progress percentage of [solvedTasks] of [totalTasks]
///
/// If [totalTasks] is 0, it returns 0
double progressPercentage(int solvedTasks, int totalTasks) {
  if (totalTasks == 0) {
    return 0;
  }
  return (solvedTasks / totalTasks);
}
