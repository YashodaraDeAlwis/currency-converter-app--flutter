# currency-converter-app-flutter
Currency converter application using Flutter.

FVM (Flutter Version Management)
In this project, FVM is used to manage the Flutter version to ensure consistency across development environments. By using FVM, you can easily switch to the Flutter version specified for this project, maintaining compatibility and stability.

mportance of FVM
Managing Flutter versions can be challenging, especially when working on multiple projects or collaborating with a team. Different projects might require different versions of Flutter due to compatibility issues or specific features. FVM provides several benefits:

Consistency: Ensures that all team members are using the same Flutter version, avoiding discrepancies and compatibility issues.
Flexibility: Allows you to easily switch between different Flutter versions for different projects.
Isolation: Prevents conflicts between Flutter versions used in different projects, ensuring a stable development environment.

Getting Started
To set up and run the project, follow these steps:
fvm releases //check the stable flutetr version

fvm install {stable version}

fvm global // set that version globally 

fvm flutter --version  //check and veryfy the version

fvm flutter create {project name} //project will create

cd project name

fvm flutter --version //checl ther version

fvm use {version} //this will create .fvmrc file 

//(check for .getignore for .fvm)

Architecture
The project follows the Clean Code architecture, which is aimed at promoting code maintainability, scalability, and testability. Here’s a brief overview of the architecture:

Presentation Layer:
Widgets: Contains UI components and screens. Widgets interact with the state management solution to reflect changes in the UI.
Controllers: Manage the state and business logic for the presentation layer. They interact with use cases to perform operations and update the UI

Domain Layer:
Entities: Represent the core data models of the application (e.g., CurrencyDTO).
Use Cases: Define the business logic of the application. They interact with repositories to fetch or modify data (e.g., GetExchangeAmount, SaveCurrency).

Data Layer:
Repositories: Implement data access logic, interacting with data sources to provide data to the domain layer (e.g., CurrencyRepository).
Data Sources: Define how data is fetched or stored. This includes remote data sources (e.g., API interactions) and local data sources (e.g., local databases) (e.g., CurrencyRemoteDataSource, CurrencyLocalDataSource).

Core Components:
The core directory houses reusable components and utilities that are shared across the application:
 Widgets: Custom widgets such as CustomAppBar, CustomButton, and CustomInput which are used throughout the app to ensure a consistent UI and reduce code duplication.
 Theme: Shared theme configurations and styles are defined in config/theme.dart and config/colors.dart to maintain a consistent look and feel across the app.
 Utilities: Includes utility functions and helper classes that provide common functionalities needed across different parts of the app.

![image](https://github.com/user-attachments/assets/9bc51718-d009-4cb1-becf-9e45bbcfb435)

State Management
The app uses GetX for state management. GetX provides a reactive programming model and simplifies state management, making the codebase more maintainable and testable.

Error Tracking
Sentry is integrated for error tracking and monitoring. It helps in identifying and diagnosing issues in real-time, providing valuable insights into the app's performance and errors.
