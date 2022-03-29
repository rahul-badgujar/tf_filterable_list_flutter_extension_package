# tf_filterable_list_flutter_extension

Flutter Extension for tf_filterable_list package with support of useful widgets.

## Supported Dart Versions

Flutter SDK: ">=1.17.0"

## Installation

Add the Package

```yaml
dependencies:
  tf_filterable_list_flutter_extension:
    git:
      url: https://github.com/rahul-badgujar/tf_filterable_list_flutter_extension_package.git
      ref: main
```

## How to use

Import the package in your dart file

```dart
import 'package:tf_filterable_list_flutter_extension/tf_filterable_list_flutter_extension.dart';
```

**NOTE: This package is Flutter Extesion of Dart Package [tf_filterable_list](https://github.com/rahul-badgujar/tf_filterable_list_dart_package#readme) to provide support for widgets for various use cases with Filterable Lists.**

### Creating Instance

```dart
// Creating an instance of TfFilterableList.
// Provide template parameter T matching the listOfFilteredItems
 type of items the filterable list is going to store.
final instance = TfFilterableList<T>();
```

### Initializing Instance

```dart
// MUST initialize the instance before using it.
// With Flutter, the initailization can be done in initState() method of Statefull Widget.
@override
void initState() {
    super.initState();
    // Must initialize the instance before using.
    instance.init();
    // You can add initial items to list while initializing only. (Optional)
    // E.g., Let us add 100 numbers to the list.
    instance.addItems(List<int>.generate(100, (index) => index + 1));
    // Applying the changes.
    instance.apply();
}
```

### Various operations on TfFilterableList Instance

You can perform more useful operations on the TfFilterableList Instance. This are well explained in the parent dart package of this extesion package. [Learn more from tf_filterable_list dart package](https://github.com/rahul-badgujar/tf_filterable_list_dart_package#readme)

### Using onChangesBuilder()

You can use onChangesBuilder() method to build an automatically updating UI whenever filtered list changes. It listens to the change in filterable list and rebuilds the widget on changes.

```dart
instance.onChangesBuilder(
    builder: (context, snapshot) {
        final listOfFilteredItems= snapshot.listOfFilteredItems;
        if (listOfFilteredItems!= null) {
            // Return the widget to show list of filtered items.
            return _buildList(listOfFilteredItems);
        }
        // Return widget to show progress indication while the list loads.
        return const Center(
            child: CircularProgressIndicator(),
        );
    },
),
```

### Disposing the Instance

```dart
// A good practice is to dispose the instance after use.
// With Flutter, you can dispose the instance in dispose() method of Statefull Widget.
@override
void dispose() {
    // Make sure to dispose the instance after use.
    instance.dispose();
    super.dispose();
}
```
