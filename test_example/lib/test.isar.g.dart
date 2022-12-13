// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.17

part of 'test.isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension Get$TestMessageCollection on Isar {
  IsarCollection<$TestMessage> get $TestMessages => this.collection();
}

const $TestMessageSchema = CollectionSchema(
  name: r'$TestMessage',
  id: -9083487474925907500,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.long,
    ),
    r'longCode': PropertySchema(
      id: 1,
      name: r'longCode',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'tests2': PropertySchema(
      id: 3,
      name: r'tests2',
      type: IsarType.objectList,
      target: r'$Test2',
    )
  },
  estimateSize: _$TestMessageEstimateSize,
  serialize: _$TestMessageSerialize,
  deserialize: _$TestMessageDeserialize,
  deserializeProp: _$TestMessageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'msg': LinkSchema(
      id: 2433933340464698168,
      name: r'msg',
      target: r'$TestStruct',
      single: true,
    ),
    r'msg1': LinkSchema(
      id: -6970447998037878212,
      name: r'msg1',
      target: r'$TestMessage',
      single: true,
    ),
    r'tests3': LinkSchema(
      id: 7902624394157666613,
      name: r'tests3',
      target: r'$Test3',
      single: false,
    )
  },
  embeddedSchemas: {r'$Test2': $Test2Schema},
  getId: _$TestMessageGetId,
  getLinks: _$TestMessageGetLinks,
  attach: _$TestMessageAttach,
  version: '3.0.5',
);

int _$TestMessageEstimateSize(
  $TestMessage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.tests2.length * 3;
  {
    final offsets = allOffsets[$Test2]!;
    for (var i = 0; i < object.tests2.length; i++) {
      final value = object.tests2[i];
      bytesCount += $Test2Schema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _$TestMessageSerialize(
  $TestMessage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.code);
  writer.writeLong(offsets[1], object.longCode);
  writer.writeString(offsets[2], object.name);
  writer.writeObjectList<$Test2>(
    offsets[3],
    allOffsets,
    $Test2Schema.serialize,
    object.tests2,
  );
}

$TestMessage _$TestMessageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = $TestMessage();
  object.code = reader.readLong(offsets[0]);
  object.id = id;
  object.longCode = reader.readLong(offsets[1]);
  object.name = reader.readString(offsets[2]);
  return object;
}

P _$TestMessageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<$Test2>(
            offset,
            $Test2Schema.deserialize,
            allOffsets,
            $Test2(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _$TestMessageGetId($TestMessage object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _$TestMessageGetLinks($TestMessage object) {
  return [object.msg, object.msg1, object.tests3];
}

void _$TestMessageAttach(
    IsarCollection<dynamic> col, Id id, $TestMessage object) {
  object.id = id;
  object.msg.attach(col, col.isar.collection<$TestStruct>(), r'msg', id);
  object.msg1.attach(col, col.isar.collection<$TestMessage>(), r'msg1', id);
  object.tests3.attach(col, col.isar.collection<$Test3>(), r'tests3', id);
}

extension $TestMessageQueryWhereSort
    on QueryBuilder<$TestMessage, $TestMessage, QWhere> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension $TestMessageQueryWhere
    on QueryBuilder<$TestMessage, $TestMessage, QWhereClause> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension $TestMessageQueryFilter
    on QueryBuilder<$TestMessage, $TestMessage, QFilterCondition> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> codeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      codeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> codeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> codeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      longCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longCode',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      longCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longCode',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      longCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longCode',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      longCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2LengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests2LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tests2',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension $TestMessageQueryObject
    on QueryBuilder<$TestMessage, $TestMessage, QFilterCondition> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> tests2Element(
      FilterQuery<$Test2> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tests2');
    });
  }
}

extension $TestMessageQueryLinks
    on QueryBuilder<$TestMessage, $TestMessage, QFilterCondition> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> msg(
      FilterQuery<$TestStruct> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'msg');
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> msgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'msg', 0, true, 0, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> msg1(
      FilterQuery<$TestMessage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'msg1');
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> msg1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'msg1', 0, true, 0, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition> tests3(
      FilterQuery<$Test3> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tests3');
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3LengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tests3', length, true, length, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tests3', 0, true, 0, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tests3', 0, false, 999999, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3LengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tests3', 0, true, length, include);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3LengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tests3', length, include, 999999, true);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterFilterCondition>
      tests3LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tests3', lower, includeLower, upper, includeUpper);
    });
  }
}

extension $TestMessageQuerySortBy
    on QueryBuilder<$TestMessage, $TestMessage, QSortBy> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByLongCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longCode', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByLongCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longCode', Sort.desc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension $TestMessageQuerySortThenBy
    on QueryBuilder<$TestMessage, $TestMessage, QSortThenBy> {
  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByLongCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longCode', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByLongCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longCode', Sort.desc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension $TestMessageQueryWhereDistinct
    on QueryBuilder<$TestMessage, $TestMessage, QDistinct> {
  QueryBuilder<$TestMessage, $TestMessage, QDistinct> distinctByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code');
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QDistinct> distinctByLongCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longCode');
    });
  }

  QueryBuilder<$TestMessage, $TestMessage, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension $TestMessageQueryProperty
    on QueryBuilder<$TestMessage, $TestMessage, QQueryProperty> {
  QueryBuilder<$TestMessage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<$TestMessage, int, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<$TestMessage, int, QQueryOperations> longCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longCode');
    });
  }

  QueryBuilder<$TestMessage, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<$TestMessage, List<$Test2>, QQueryOperations> tests2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tests2');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension Get$TestStructCollection on Isar {
  IsarCollection<$TestStruct> get $TestStructs => this.collection();
}

const $TestStructSchema = CollectionSchema(
  name: r'$TestStruct',
  id: -4895479297776338512,
  properties: {
    r'a': PropertySchema(
      id: 0,
      name: r'a',
      type: IsarType.string,
    ),
    r'b': PropertySchema(
      id: 1,
      name: r'b',
      type: IsarType.string,
    ),
    r'c': PropertySchema(
      id: 2,
      name: r'c',
      type: IsarType.longList,
    ),
    r'option': PropertySchema(
      id: 3,
      name: r'option',
      type: IsarType.byte,
      enumMap: _$TestStructoptionEnumValueMap,
    )
  },
  estimateSize: _$TestStructEstimateSize,
  serialize: _$TestStructSerialize,
  deserialize: _$TestStructDeserialize,
  deserializeProp: _$TestStructDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _$TestStructGetId,
  getLinks: _$TestStructGetLinks,
  attach: _$TestStructAttach,
  version: '3.0.5',
);

int _$TestStructEstimateSize(
  $TestStruct object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.a.length * 3;
  bytesCount += 3 + object.b.length * 3;
  bytesCount += 3 + object.c.length * 8;
  return bytesCount;
}

void _$TestStructSerialize(
  $TestStruct object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.a);
  writer.writeString(offsets[1], object.b);
  writer.writeLongList(offsets[2], object.c);
  writer.writeByte(offsets[3], object.option.index);
}

$TestStruct _$TestStructDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = $TestStruct();
  object.a = reader.readString(offsets[0]);
  object.b = reader.readString(offsets[1]);
  object.c = reader.readLongList(offsets[2]) ?? [];
  object.id = id;
  object.option =
      _$TestStructoptionValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          $Options.Option1;
  return object;
}

P _$TestStructDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongList(offset) ?? []) as P;
    case 3:
      return (_$TestStructoptionValueEnumMap[reader.readByteOrNull(offset)] ??
          $Options.Option1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _$TestStructoptionEnumValueMap = {
  'Option1': 0,
  'Option2': 1,
};
const _$TestStructoptionValueEnumMap = {
  0: $Options.Option1,
  1: $Options.Option2,
};

Id _$TestStructGetId($TestStruct object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _$TestStructGetLinks($TestStruct object) {
  return [];
}

void _$TestStructAttach(
    IsarCollection<dynamic> col, Id id, $TestStruct object) {
  object.id = id;
}

extension $TestStructQueryWhereSort
    on QueryBuilder<$TestStruct, $TestStruct, QWhere> {
  QueryBuilder<$TestStruct, $TestStruct, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension $TestStructQueryWhere
    on QueryBuilder<$TestStruct, $TestStruct, QWhereClause> {
  QueryBuilder<$TestStruct, $TestStruct, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension $TestStructQueryFilter
    on QueryBuilder<$TestStruct, $TestStruct, QFilterCondition> {
  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'a',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'a',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'a',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'a',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> aIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'a',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'b',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'b',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'b',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'b',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> bIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'b',
        value: '',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition>
      cElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition>
      cElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'c',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition>
      cLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> cLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'c',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> optionEqualTo(
      $Options value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition>
      optionGreaterThan(
    $Options value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> optionLessThan(
    $Options value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterFilterCondition> optionBetween(
    $Options lower,
    $Options upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'option',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension $TestStructQueryObject
    on QueryBuilder<$TestStruct, $TestStruct, QFilterCondition> {}

extension $TestStructQueryLinks
    on QueryBuilder<$TestStruct, $TestStruct, QFilterCondition> {}

extension $TestStructQuerySortBy
    on QueryBuilder<$TestStruct, $TestStruct, QSortBy> {
  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'a', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'a', Sort.desc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'b', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'b', Sort.desc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'option', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> sortByOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'option', Sort.desc);
    });
  }
}

extension $TestStructQuerySortThenBy
    on QueryBuilder<$TestStruct, $TestStruct, QSortThenBy> {
  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'a', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'a', Sort.desc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'b', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'b', Sort.desc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'option', Sort.asc);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QAfterSortBy> thenByOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'option', Sort.desc);
    });
  }
}

extension $TestStructQueryWhereDistinct
    on QueryBuilder<$TestStruct, $TestStruct, QDistinct> {
  QueryBuilder<$TestStruct, $TestStruct, QDistinct> distinctByA(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'a', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QDistinct> distinctByB(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'b', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QDistinct> distinctByC() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'c');
    });
  }

  QueryBuilder<$TestStruct, $TestStruct, QDistinct> distinctByOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'option');
    });
  }
}

extension $TestStructQueryProperty
    on QueryBuilder<$TestStruct, $TestStruct, QQueryProperty> {
  QueryBuilder<$TestStruct, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<$TestStruct, String, QQueryOperations> aProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'a');
    });
  }

  QueryBuilder<$TestStruct, String, QQueryOperations> bProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'b');
    });
  }

  QueryBuilder<$TestStruct, List<int>, QQueryOperations> cProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'c');
    });
  }

  QueryBuilder<$TestStruct, $Options, QQueryOperations> optionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'option');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension Get$Test3Collection on Isar {
  IsarCollection<$Test3> get $Test3s => this.collection();
}

const $Test3Schema = CollectionSchema(
  name: r'$Test3',
  id: 5883426679463217191,
  properties: {
    r'test': PropertySchema(
      id: 0,
      name: r'test',
      type: IsarType.string,
    )
  },
  estimateSize: _$Test3EstimateSize,
  serialize: _$Test3Serialize,
  deserialize: _$Test3Deserialize,
  deserializeProp: _$Test3DeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _$Test3GetId,
  getLinks: _$Test3GetLinks,
  attach: _$Test3Attach,
  version: '3.0.5',
);

int _$Test3EstimateSize(
  $Test3 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.test.length * 3;
  return bytesCount;
}

void _$Test3Serialize(
  $Test3 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.test);
}

$Test3 _$Test3Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = $Test3();
  object.id = id;
  object.test = reader.readString(offsets[0]);
  return object;
}

P _$Test3DeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _$Test3GetId($Test3 object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _$Test3GetLinks($Test3 object) {
  return [];
}

void _$Test3Attach(IsarCollection<dynamic> col, Id id, $Test3 object) {
  object.id = id;
}

extension $Test3QueryWhereSort on QueryBuilder<$Test3, $Test3, QWhere> {
  QueryBuilder<$Test3, $Test3, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension $Test3QueryWhere on QueryBuilder<$Test3, $Test3, QWhereClause> {
  QueryBuilder<$Test3, $Test3, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension $Test3QueryFilter on QueryBuilder<$Test3, $Test3, QFilterCondition> {
  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'test',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'test',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'test',
        value: '',
      ));
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterFilterCondition> testIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'test',
        value: '',
      ));
    });
  }
}

extension $Test3QueryObject on QueryBuilder<$Test3, $Test3, QFilterCondition> {}

extension $Test3QueryLinks on QueryBuilder<$Test3, $Test3, QFilterCondition> {}

extension $Test3QuerySortBy on QueryBuilder<$Test3, $Test3, QSortBy> {
  QueryBuilder<$Test3, $Test3, QAfterSortBy> sortByTest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'test', Sort.asc);
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterSortBy> sortByTestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'test', Sort.desc);
    });
  }
}

extension $Test3QuerySortThenBy on QueryBuilder<$Test3, $Test3, QSortThenBy> {
  QueryBuilder<$Test3, $Test3, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterSortBy> thenByTest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'test', Sort.asc);
    });
  }

  QueryBuilder<$Test3, $Test3, QAfterSortBy> thenByTestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'test', Sort.desc);
    });
  }
}

extension $Test3QueryWhereDistinct on QueryBuilder<$Test3, $Test3, QDistinct> {
  QueryBuilder<$Test3, $Test3, QDistinct> distinctByTest(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'test', caseSensitive: caseSensitive);
    });
  }
}

extension $Test3QueryProperty on QueryBuilder<$Test3, $Test3, QQueryProperty> {
  QueryBuilder<$Test3, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<$Test3, String, QQueryOperations> testProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'test');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const $Test2Schema = Schema(
  name: r'$Test2',
  id: -7577182530198639408,
  properties: {
    r'test': PropertySchema(
      id: 0,
      name: r'test',
      type: IsarType.string,
    )
  },
  estimateSize: _$Test2EstimateSize,
  serialize: _$Test2Serialize,
  deserialize: _$Test2Deserialize,
  deserializeProp: _$Test2DeserializeProp,
);

int _$Test2EstimateSize(
  $Test2 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.test.length * 3;
  return bytesCount;
}

void _$Test2Serialize(
  $Test2 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.test);
}

$Test2 _$Test2Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = $Test2();
  object.test = reader.readString(offsets[0]);
  return object;
}

P _$Test2DeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension $Test2QueryFilter on QueryBuilder<$Test2, $Test2, QFilterCondition> {
  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'test',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'test',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'test',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'test',
        value: '',
      ));
    });
  }

  QueryBuilder<$Test2, $Test2, QAfterFilterCondition> testIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'test',
        value: '',
      ));
    });
  }
}

extension $Test2QueryObject on QueryBuilder<$Test2, $Test2, QFilterCondition> {}
