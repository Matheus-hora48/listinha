// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ConfigurationModel extends _ConfigurationModel
    with RealmEntity, RealmObject {
  ConfigurationModel(
    String themeModeName, {
    DateTime? syncDate,
  }) {
    RealmObject.set(this, 'themeModeName', themeModeName);
    RealmObject.set(this, 'syncDate', syncDate);
  }

  ConfigurationModel._();

  @override
  String get themeModeName =>
      RealmObject.get<String>(this, 'themeModeName') as String;
  @override
  set themeModeName(String value) =>
      RealmObject.set(this, 'themeModeName', value);

  @override
  DateTime? get syncDate =>
      RealmObject.get<DateTime>(this, 'syncDate') as DateTime?;
  @override
  set syncDate(DateTime? value) => RealmObject.set(this, 'syncDate', value);

  @override
  Stream<RealmObjectChanges<ConfigurationModel>> get changes =>
      RealmObject.getChanges<ConfigurationModel>(this);

  @override
  ConfigurationModel freeze() =>
      RealmObject.freezeObject<ConfigurationModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(ConfigurationModel._);
    return const SchemaObject(ConfigurationModel, 'ConfigurationModel', [
      SchemaProperty('themeModeName', RealmPropertyType.string),
      SchemaProperty('syncDate', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}
