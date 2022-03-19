import 'package:flutter/widgets.dart';
import 'package:tf_filterable_list/tf_filterable_list.dart';

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
