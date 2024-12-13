# Null Pointer Exception in Dart JSON Parsing

This repository demonstrates a common error when parsing JSON responses in Dart and shows how to correctly handle potential null values.

The `bug.dart` file contains code that directly accesses JSON data without proper null checks, which can lead to null pointer exceptions.  The `bugSolution.dart` file provides a corrected version that uses safe null navigation and conditional checks to prevent these exceptions.

This example is useful for understanding and avoiding common errors when working with asynchronous operations and JSON data in Dart.  It highlights the importance of robust error handling to ensure application stability and prevent unexpected crashes.