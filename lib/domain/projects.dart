import 'package:manager/domain/project.dart';

abstract class Projects {
  Project get(String projectId);
  void add(Project project);
}
