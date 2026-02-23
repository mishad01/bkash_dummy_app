# bKash App Clone

A Flutter mobile application that replicates the core UI of the [bKash](https://www.bkash.com/) mobile financial service (MFS) platform. Built with clean architecture principles and the Provider state management pattern.

---

## Screenshots

| Splash | Login | Home |
|--------|-------|------|
| *Animated splash with bKash logo* | *Phone-number login form* | *Menu grid, promo banner & quick features* |

---

## Features

- **Splash Screen** — Branded animated intro screen with the bKash logo
- **Login Screen** — Phone number entry UI matching the bKash style
- **Home Screen** — Full home dashboard including:
  - Pink branded app bar with account balance display
  - 4-column icon menu grid (8 visible / 16 expanded with *See More / See Less* toggle)
  - NFC cashback promotional banner
  - Quick Features section (My Offers, Coupons, Rewards)

---

## Architecture

The project follows **Clean Architecture** with a clear separation of concerns across three layers:

```
lib/
├── core/                         # App-wide constants & utilities
│   ├── app_colors.dart           # Brand color palette
│   └── app_strings.dart          # String constants
│
├── domain/                       # Business logic (entities)
│   └── entities/
│       └── home_menu_item.dart   # Pure entity class
│
├── data/                         # Data layer (models & sample data)
│   └── models/
│       └── home_menu_item_model.dart  # Model with sample data factory
│
├── presentation/                 # UI layer
│   ├── provider/
│   │   └── home_provider.dart    # State management (ChangeNotifier)
│   ├── screen/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   └── home_screen.dart
│   └── widget/
│       ├── home_app_bar.dart
│       ├── menu_grid.dart
│       ├── menu_grid_item.dart
│       ├── promo_banner.dart
│       └── quick_features_section.dart
│
└── main.dart
```

### Layer Responsibilities

| Layer | Responsibility |
|-------|---------------|
| **Core** | App-wide constants (colors, strings) |
| **Domain** | Pure entity definitions, no Flutter dependencies |
| **Data** | Data models extending entities, sample/mock data |
| **Presentation** | Widgets, screens, and Provider-based state management |

---

## Tech Stack

| Technology | Purpose |
|------------|---------|
| [Flutter](https://flutter.dev) | Cross-platform UI framework |
| [Dart](https://dart.dev) | Programming language |
| [Provider](https://pub.dev/packages/provider) `^6.1.2` | State management |
| [Material 3](https://m3.material.io) | Design system & theming |

---

## Getting Started

### Prerequisites

- Flutter SDK `^3.10.8`
- Dart SDK `^3.10.8`
- An Android emulator, iOS simulator, or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd bkash_app_test
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Release

```bash
# Android APK
flutter build apk --release

# iOS (requires macOS + Xcode)
flutter build ios --release
```

---

## Assets

```
assets/
├── bkash.png          # bKash brand logo (used in splash & app bar)
├── bkash_splash.png   # Full splash screen image
└── offfer_banner.png  # NFC cashback promotional banner image
```

---

## Design Tokens

The app uses a centralized `AppColors` class matching bKash's brand identity:

| Token | Color | Usage |
|-------|-------|-------|
| `primary` | `#E2136E` | Main brand pink (app bar, buttons) |
| `primaryDark` | `#B30057` | Darker pink for pressed states |
| `lightGrey` | `#F5F5F5` | Screen background |
| `textDark` | `#1A1A2E` | Primary text color |
| `quickCardBg` | `#FFF3E0` | Warm tint for quick feature cards |

---

## State Management

`HomeProvider` (extends `ChangeNotifier`) manages the home screen state:

- Holds all 16 menu items loaded from `HomeMenuItemModel.sampleData`
- Controls the **See More / See Less** expand/collapse toggle
- Exposes `visibleItems` — returns first 8 items (collapsed) or all 16 (expanded)

Provided at the root via `ChangeNotifierProvider` in `main.dart`.

## Contributing

This is an educational project. Feel free to fork and experiment!

## License

This project is created for educational purposes as part of Ostad Batch 11.
