import 'package:cadrninho/src/home/widgets/task_card.dart';
import 'package:cadrninho/src/shared/services/realm/models/task_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';

void main() {
  final board = TaskBoard(Uuid.v4(), 'Nova lista de tarefas 1');

  test('task card ...', () {
    final task = [
      Task(
        Uuid.v4(),
        '',
        completed: true,
      ),
      Task(
        Uuid.v4(),
        '',
        completed: true,
      ),
      Task(
        Uuid.v4(),
        '',
      ),
      Task(
        Uuid.v4(),
        '',
      ),
    ];

    final progress = TaskCard(
      board: board,
    ).getProgress(task);

    expect(progress, 0.5);
  });
}
