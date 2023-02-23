// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Task extends _Task with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  Task(
    Uuid id,
    String description, {
    bool completed = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Task>({
        'completed': false,
      });
    }
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'description', description);
    RealmObject.set(this, 'completed', completed);
  }

  Task._();

  @override
  Uuid get id => RealmObject.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObject.set(this, 'id', value);

  @override
  String get description =>
      RealmObject.get<String>(this, 'description') as String;
  @override
  set description(String value) => RealmObject.set(this, 'description', value);

  @override
  bool get completed => RealmObject.get<bool>(this, 'completed') as bool;
  @override
  set completed(bool value) => RealmObject.set(this, 'completed', value);

  @override
  Stream<RealmObjectChanges<Task>> get changes =>
      RealmObject.getChanges<Task>(this);

  @override
  Task freeze() => RealmObject.freezeObject<Task>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Task._);
    return const SchemaObject(Task, 'Task', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('completed', RealmPropertyType.bool),
    ]);
  }
}

class TaskBoard extends _TaskBoard with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  TaskBoard(
    Uuid id,
    String title, {
    bool enable = true,
    Iterable<Task> tasks = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<TaskBoard>({
        'enable': true,
      });
    }
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'title', title);
    RealmObject.set(this, 'enable', enable);
    RealmObject.set<RealmList<Task>>(this, 'tasks', RealmList<Task>(tasks));
  }

  TaskBoard._();

  @override
  Uuid get id => RealmObject.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObject.set(this, 'id', value);

  @override
  String get title => RealmObject.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObject.set(this, 'title', value);

  @override
  RealmList<Task> get tasks =>
      RealmObject.get<Task>(this, 'tasks') as RealmList<Task>;
  @override
  set tasks(covariant RealmList<Task> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get enable => RealmObject.get<bool>(this, 'enable') as bool;
  @override
  set enable(bool value) => RealmObject.set(this, 'enable', value);

  @override
  Stream<RealmObjectChanges<TaskBoard>> get changes =>
      RealmObject.getChanges<TaskBoard>(this);

  @override
  TaskBoard freeze() => RealmObject.freezeObject<TaskBoard>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(TaskBoard._);
    return const SchemaObject(TaskBoard, 'TaskBoard', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('tasks', RealmPropertyType.object,
          linkTarget: 'Task', collectionType: RealmCollectionType.list),
      SchemaProperty('enable', RealmPropertyType.bool),
    ]);
  }
}
