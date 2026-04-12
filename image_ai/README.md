# Meet A Flora

Meet A Flora is a Flutter application that helps users explore flowers and get AI-generated botanical information from images.

## Project Overview

This project follows a two-screen flow:

1. Discovery screen: user browses a flower gallery.
2. AI response screen: user requests dynamic AI details for the selected flower image.

The app is built with Clean Architecture, BLoC state management, and GoRouter navigation.

## Features

- Flower gallery with selectable flower images.
- Dynamic AI-generated flower details from image input.
- BLoC state transitions: initial, loading, success, error.
- Clean Architecture separation (Presentation, Domain, Data).
- Dependency injection using GetIt and Injectable.
- Failure-based error handling and exception mapping.
- Localization support (English and Arabic).

## Tech Stack

- Flutter
- flutter_bloc / bloc
- Dio
- GoRouter
- GetIt + Injectable
- multiple_result (Either-style result handling)
- Freezed + Json Serializable
- Easy Localization

## Architecture

The codebase is organized by features and Clean Architecture layers:

- Presentation: pages, cubits, states.
- Domain: entities, repository contracts, use cases.
- Data: models, remote data sources, repository implementations.

Main folders:

- lib/core
- lib/features/flowers
- lib/features/ai_response

## App Flow

1. App starts on the Flowers page.
2. User selects a flower image.
3. App navigates to the AI Response page with the selected image URL.
4. User taps "Get AI Response".
5. App converts image to base64 and sends it to Gemini API.
6. Generated flower description is displayed.

## State Management

Flowers feature:

- Initial -> Success
- Initial -> Error

AI Response feature:

- Initial -> Loading -> Success
- Initial -> Loading -> Error

## Error Handling

The app uses a Failure pattern to handle errors consistently:

- Network and server errors.
- Timeout and format errors.
- Authorization and validation errors.
- Unknown fallback errors.

Repositories return Result<Success, Failure> instead of throwing errors to the UI.

## Screenshots

### Flowers Screenshot

![5969765685883767980](https://github.com/user-attachments/assets/5c3c017b-8be2-473b-a6fb-09704de96a45)



### AI Response Screenshot

![5969765685883767979](https://github.com/user-attachments/assets/3c8e7ff2-9195-4653-b44d-20a2db9b775c)


### Error Screenshot

![5969765685883767989](https://github.com/user-attachments/assets/9cbe325b-c5ff-44ca-845b-34ce3992be98)


## Setup and Run

1. Install dependencies:

```bash
flutter pub get
```

2. Create a .env file in the project root with:

```env
gemini_key=YOUR_GEMINI_API_KEY
```

3. Generate code (if needed):

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the app:

```bash
flutter run
```

## Notes

- Current discovery mode uses a predefined flower image list.
- Camera capture flow is not yet implemented.
- AI content is dynamically generated on each request.

## Future Improvements

- Add camera capture and gallery picker.
- Add unit and widget tests for cubits, use cases, and repositories.
- Improve retry UX and recovery actions.
