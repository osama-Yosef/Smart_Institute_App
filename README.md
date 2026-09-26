<div align="center">

<img src="docs/cover.png" alt="Smart Institute" width="100%" />

<br/>

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=flat-square&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=flat-square&logo=dart&logoColor=white)](https://dart.dev)
[![Roles](https://img.shields.io/badge/Roles-Student%20·%20Doctor-1E2A4A?style=flat-square)](#two-roles-one-app)

**A mobile app for an institute's students and doctors.**
Students see their courses, weekly schedule, GPA and warnings.
Doctors see their courses and students, and register courses for each student.

</div>

---

## Screenshots

### Student

<table>
  <tr>
    <td align="center"><img src="docs/screenshots/onboarding.png" width="200" alt="Onboarding"/><br/><sub><b>Onboarding</b><br/>Shown on first launch</sub></td>
    <td align="center"><img src="docs/screenshots/login.png" width="200" alt="Login"/><br/><sub><b>Sign in</b><br/>Student / Doctor tabs</sub></td>
    <td align="center"><img src="docs/screenshots/student-home.png" width="200" alt="Home"/><br/><sub><b>Home</b><br/>GPA, credit hours, schedule</sub></td>
    <td align="center"><img src="docs/screenshots/student-courses.png" width="200" alt="Courses"/><br/><sub><b>My courses</b><br/>Day and time of each class</sub></td>
    <td align="center"><img src="docs/screenshots/student-profile.png" width="200" alt="Profile"/><br/><sub><b>Profile</b><br/>ID, level, logout</sub></td>
  </tr>
</table>

### Doctor

<table>
  <tr>
    <td align="center"><img src="docs/screenshots/doctor-home.png" width="200" alt="Doctor home"/><br/><sub><b>Home</b><br/>Courses and schedule</sub></td>
    <td align="center"><img src="docs/screenshots/doctor-students.png" width="200" alt="Students"/><br/><sub><b>Students</b><br/>Searchable list</sub></td>
    <td align="center"><img src="docs/screenshots/doctor-student-details.png" width="200" alt="Student"/><br/><sub><b>Student file</b><br/>GPA, hours, enrolled courses</sub></td>
    <td align="center"><img src="docs/screenshots/doctor-register-courses.png" width="200" alt="Register courses"/><br/><sub><b>Register courses</b><br/>Pick courses for a student</sub></td>
  </tr>
</table>

## Two roles, one app

Both roles share the splash screen, onboarding and sign-in, then each gets its own home and
bottom navigation.

**Student**
- Home with a welcome card, warnings, completed credit hours and GPA
- Weekly schedule with the day and time of every class
- My courses and a profile screen with student ID and level

**Doctor**
- Home with the doctor's courses (code and credit hours) and teaching schedule
- Student list with search
- Student file with GPA, credit hours and enrolled courses
- A bottom sheet to register new courses for a student, with already-taken courses disabled

**Shared**
- Onboarding on first launch only, remembered with `shared_preferences`
- Sign-in form with validation and a password visibility toggle
- Responsive sizing with `flutter_screenutil`

## Tech stack

| Area | Choice |
|:--|:--|
| Framework | Flutter, Dart |
| Onboarding | `introduction_screen` |
| Local storage | `shared_preferences` |
| Responsive UI | `flutter_screenutil` |
| Splash | `flutter_native_splash` |

```
lib/
├── core/
│   ├── widget/            shared widgets (app bar, text field, password field)
│   ├── widget_doctor/     doctor widgets (student list, course cards, register dialog)
│   └── widget_student/    student widgets (schedule, courses, bottom bar)
├── factore/
│   ├── auth/login/        sign in
│   ├── doctor/            doctor home and students
│   ├── onboarding/        onboarding flow
│   ├── smart_institute/   app root and splash
│   └── student/           student home, courses, profile
└── main.dart
```

## Getting started

```bash
flutter pub get
flutter run
```

The app runs on sample data. To try each role, sign in with any password and an email that
contains `student` (for example `student@institute.edu`) or `doctor`.

## Roadmap

- [ ] Connect to a backend for students, courses and registration
- [ ] Course recommendations for students
- [ ] Attendance and grades

## Author

**Osama Yosef** · Flutter developer, Cairo

[![GitHub](https://img.shields.io/badge/GitHub-osama--Yosef-181717?style=flat-square&logo=github)](https://github.com/osama-Yosef)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Osama%20Yosef-0A66C2?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/osama-yosef-819268319)
[![Upwork](https://img.shields.io/badge/Upwork-Hire%20me-6FDA44?style=flat-square&logo=upwork&logoColor=white)](https://upwork.com/freelancers/~014ebd205ef38ca04c)
[![Email](https://img.shields.io/badge/Email-osamayosef038%40gmail.com-EA4335?style=flat-square&logo=gmail&logoColor=white)](mailto:osamayosef038@gmail.com)
