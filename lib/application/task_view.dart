class TaskView {
  final String name;
  final String projectId;
  TaskView(
    this.name,
    this.projectId,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskView &&
        other.name == name &&
        other.projectId == projectId;
  }

  @override
  int get hashCode => name.hashCode ^ projectId.hashCode;
}
