import 'package:flutter/widgets.dart';
import 'package:tf_filterable_list/tf_filterable_list.dart';

/// This extension provides a builder to build widget from filtered list.
/// The builder listens to changes in filtered list and updates UI accordingly.
extension TfFlutterFilterableList<T> on TfFilterableList<T> {
  Widget onChangesBuilder(
      {required Widget Function(BuildContext, AsyncSnapshot<dynamic>)
          builder}) {
    return StreamBuilder<List<T>>(
      stream: streamOfFilteredItems,
      builder: builder,
    );
  }
}
