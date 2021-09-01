![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white) ![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Cover](images/cover.png)

# Introduction 🚀

> Classroom is a Google Classroom clone built using 💙 Flutter.

Before we start, you can take a look at the app:

![Output sample](images/demo.gif)

## Screenshots 🗻

![Output sample](images/login_page.png)![Output sample](images/sign_up_page.png)![Output sample](images/role_selection_page.png)![Output sample](images/loading_page.png)![Output sample](images/home_page.png)![Output sample](images/course_page.png)![Output sample](images/create_course_page.png)![Output sample](images/course_page_more.png)![Output sample](images/invite_student_page.png)![Output sample](images/home_page_more.png) 

## Key Features 🔑

- [x] Login/SignUp.
- [x] CRUD Course.
- [x] Join Course.
- [x] Invite students to Course.
- [x] Add/Remove students from Course.
- [ ] Upload/Submit assignments, tests.
- [ ] Calendar view.
- [ ] Video Conference (Online Class).


## How To Use 🧾

To clone and run this application, you'll need [Git](https://git-scm.com) and [Flutter](https://flutter.dev/docs/get-started/install) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/Shadow60539/flutter_classroom.git

# Go into the repository
$ cd flutter_classroom

# Install dependencies
$ flutter packages get

# Run the app
$ flutter run
```


### Packages 📦


Some very good packages are used in the project.


Below are the information about these packages.


PACKAGE | INFO
---|---
[cached_network_image](https://pub.flutter-io.cn/packages/cached_network_image) | Caching Network Images
[flutter_bloc](https://pub.flutter-io.cn/packages/flutter_bloc) | Bloc Pattern
[lottie](https://pub.flutter-io.cn/packages/lottie) | Lottie files animations
[google_fonts](https://pub.flutter-io.cn/packages/google_fonts) | Google fonts 
[freezed](https://pub.flutter-io.cn/packages/freezed) | Code generation for immutable classes
[lint](https://pub.flutter-io.cn/packages/lint) | Rules handler for Dart
[build_runner](https://pub.flutter-io.cn/packages/build_runner) | Build Custom Models

### Directory Structure 🦴

The project directory structure is as follows:

```
├── android
├── asset
├── build
├── images
├── ios
├── lib
├── pubspec.lock
├── pubspec.yaml

```


Let me explain the other directories besides **lib**:

DIRECTORY | INFO
---|---
images | readme images files
asset | images and lottie files

Then the lib directory


![lib](images/lib.png)



DIRECTORY | INFO
---|---
core | Global Classes
infrastructure | Fetching data from backend
domain | Converting raw json data into models -DTOs
application | State Management 
presentation | UI

