# App Akademie Task App

## Setup

[Video-Anleitung für Dozenten / Tuts](https://www.youtube.com/watch?v=lqVHxKlN0zA)

[Video-Anleitung für TN](https://www.youtube.com/watch?v=VHsAfd0oumM)

### Setup for new Batches

1. Fork this repository for your batch
2. Remove / Update `README.md`
3. Share the repository with the batch students

### Add sample solutions

1. [Copy the contents of the sample solution file](https://github.dev/DavidAppAkademie/task_app_sample_solutions)
2. Paste the contents of the sample solution file into the same sample solution file in the forked repository.
3. Save, commit, push

### Update the app

1. `git remote add upstream https://github.com/DavidAppAkademie/task_app`
2. `git fetch upstream`
3. `git rebase upstream/main`
4. Sync changes

## New Task

### @Tuts 🧑‍🏫

To add a new task for the students follow these steps:

1. Add new `TaskModel` in `lib/private/features/tasks/data/tasks.dart` (e.g.: `t_3_1_1`)
2. Create corresponding solution file for students to solve inside `lib/solutions/chapter_$i` (e.g.: `lib/solutions/chapter_3/s_3_1_1.dart`)
   (empty stateless widget with empty build method that throws UnimplementedError)
4. Add Task to the corresponding list in `lib/tasks/task_list.dart` (e.g.: `chapter3TaskList`)
```dart
Task(
    taskModel: t_3_1_1,
    // solution: S311(),
)
```
1. Create tests in `test` (e.g. `s_3_1_1_test.dart`)
2. Create a sample solution in `/lib/sample_solutions/chapter_$i` and test it
3. Push (don't commit the sample solution right away)

### @Students 🧑‍🎓

To solve a task follow these steps:

1. Pull the latest version with Git
2. Check the task list (in `lib/tasks/task_list.dart`) for tasks with no solution.
```dart
Task(
    taskModel: t_3_1_1,
    // solution: S311(),
)
```

3. Uncomment the line that assigns a solution
```dart
Task(
    taskModel: t_3_1_1,
    solution: S311(),
)
```

4. Solve the task inside the class mentioned in the solution (e.g. `S311` in `lib/solutions/chapter_3/s_3_1_1.dart`)
5. Validate your solution in VSCode by running the corresponding tests.