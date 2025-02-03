# Unhandled Exceptions in Dart Asynchronous Operations

This repository showcases a common error in Dart asynchronous operations and demonstrates how to improve its error handling.

The `bug.dart` file contains code that fetches data from a remote API. The code uses a `try-catch` block to handle potential errors but doesn't provide detailed error information. The solution addresses this. 

The `bugSolution.dart` file provides a more robust solution by including more specific exception handling and informative error messages.  This improvement greatly simplifies debugging and maintenance.