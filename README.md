# App Akademie Task App

## Setup

[Video-Anleitung](https://www.youtube.com/watch?v=VHsAfd0oumM)

⚠️ Please ***fork*** the app in GitHub before cloning it to your computer.

## How to solve a task

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

## How to update the app

### GitHub 

Press the "Sync fork" button on GitHub.

### CLI

1. `git remote add upstream https://github.com/DavidAppAkademie/task_app`
2. `git fetch upstream`
3. `git merge upstream/main --no-commit`
4. Sync changes