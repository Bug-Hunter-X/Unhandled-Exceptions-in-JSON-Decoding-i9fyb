# Unhandled Exceptions in JSON Decoding (Dart)

This example demonstrates a common error in Dart when handling JSON responses: unhandled exceptions during JSON decoding and data access. The code makes assumptions about the structure and content of the JSON data without proper error handling.  This can lead to unexpected crashes.

## Bug

The `fetchData` function fetches JSON data and directly accesses elements without verifying the existence of keys or checking for null values. If the JSON response is malformed, empty, or missing expected keys ('name' and 'age'), the code will throw exceptions.

## Solution

The solution adds robust error handling to prevent crashes. It checks for null values and the existence of keys before accessing them.  It also provides more informative error messages.