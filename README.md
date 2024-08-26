# yojan_tech

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Yojan Tech Assignment

## Introduction

This documentation provides step-by-step instructions to set up Android Studio, configure a Flutter
project with Firebase, and implement login and signup functionalities using Firebase Authentication.

## Downloading Installing Android Studio

## Download Android Studio:

-Visited the official Android Studio download page.
-And then have choosen the version appropriate for your operating system for my Windows and download
it.

## Install Android Studio:

-During installation, I have installed the Android SDK, Android Virtual Device (AVD), and Android
SDK Platform Tools.
-Completed the setup wizard

## Setting Up Flutter Environment

## Download Flutter SDK:

-Visited the official Flutter website.
-Downloaded the Flutter SDK appropriate for my operating system.

## Install Flutter:

-Extractd the Flutter SDK to my pc with location of downloads.
-Added the Flutter SDK path to my system's environment variables .

## Running of flutter doctor

After successful installation of flutter then in command prompt entered the command called flutter
doctor which is used to know any errors in installing of the andriod studio

## Creation of  a Flutter Project:

-Open Android Studio.
-Select File > New > New Flutter Project.
-Choose Flutter Application and click Next.
-Enter your project name, choose the location, and ensure the Flutter SDK path is correct.
-Click Finish.
-And then we have to Open the created Flutter project in Android Studio.

## Setting Up Firebase for Flutter Project

## Create a Firebase Project:

-Go to the Firebase Console.
-Click on Add Project to create a new firebase to connect into our flutter project

## Adding  Android App to Firebase:

-In the Firebase Console, click on Add App and then Android.
-Registered app with the package name (e.g., com.example.myapp) -> this package name will be
availble in our flutter project with andriod directory in build.gradle
and then
-Download google-services.json into our flutter project of same andriod directory of src

-Open the android/build.gradle file and add the following line in the dependencies section:

-classpath 'com.google.gms:google-services:4.4.2' -> latest vesrsion should be pasted
-Open the android/app/build.gradle file and add the following lines at the bottom:
-apply plugin: 'com.google.gms.google-services'
Add Firebase Dependencies:

-Add the required Firebase dependencies in your pubspec.yaml file:

-dependencies:
flutter:
sdk: flutter
firebase_core: latest_version
firebase_auth: latest_version
Run flutter pub get to install the dependencies.

## Adding IOS to Flutter

-The same procedure as andriod but the file which downloaded from firebase should be pasted in ios
direactory in flutter

## Initialize Firebase in Flutter:

-Open the main.dart file in your Flutter project.
-Initialize Firebase by adding the following code in the main function:

-import 'package:firebase_core/firebase_core.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(MyApp());
}

## Implementing Login and Signup Functionality

created some files to set up login and signup functionality

## firebase_auth_services.dart

This simplifies and manages the interaction with Firebase Authentication in a Flutter application.
This class is particularly useful for handling user authentication through email and password

## login,signup and home page

These are the pages for user with user interfaces where user can successfully loges and signes up
into his account by entering their details.
-And also can navigate into other pages such as login or signp if his/her account exits or does not
exists.
-And at last user can navigate into home page after successful login or signin.

## form_container_widget

This is designed to create a form field with various customizable features. This widget is
particularly useful for creating text input fields in forms, such as login and signup forms, where
we may need different input types and functionalities like password visibility toggling. 

