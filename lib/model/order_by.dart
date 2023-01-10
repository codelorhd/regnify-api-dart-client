//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

/// An enumeration.
class OrderBy {
  /// Instantiate a new enum with the provided [value].
  const OrderBy._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = OrderBy._(r'DATE_CREATED');
  static const MODIFIED = OrderBy._(r'DATE_MODIFIED');

  /// List of all possible values in this [enum][OrderBy].
  static const values = <OrderBy>[
    CREATED,
    MODIFIED,
  ];

  static OrderBy? fromJson(dynamic value) => OrderByTypeTransformer().decode(value);

  static List<OrderBy>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderBy] to String,
/// and [decode] dynamic data back to [OrderBy].
class OrderByTypeTransformer {
  factory OrderByTypeTransformer() => _instance ??= const OrderByTypeTransformer._();

  const OrderByTypeTransformer._();

  String encode(OrderBy data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderBy.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderBy? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATE_CREATED': return OrderBy.CREATED;
        case r'DATE_MODIFIED': return OrderBy.MODIFIED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderByTypeTransformer] instance.
  static OrderByTypeTransformer? _instance;
}

