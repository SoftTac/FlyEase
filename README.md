```markdown
# ✈️ FlyEase - Flight & Hotel Booking App
![Flutter Ticket Booking App](https://github.com/user-attachments/assets/3ac2d037-65af-4c4e-9ab4-a2e13f64f998)



**FlyEase** is a beautiful and functional Flutter application designed for seamless **flight and hotel booking**. Featuring smooth animations, reusable widgets, and a responsive layout — it's your all-in-one travel companion.

---

## 🧭 Table of Contents
- [📂 Project Structure](#-project-structure)
- [✨ Key Features](#-key-features)
- [🚀 Getting Started](#-getting-started)
- [🎨 Customization](#-customization)
- [🛠️ Widget Guide](#-widget-guide)
- [📱 Screenshots](#-screenshots)
- [🧱 Building Blocks](#-building-blocks)
- [🤝 Contributing](#-contributing)
- [👨‍💻 Developed By](#-developed-by)

---

## 📂 Project Structure

```
lib/
├── main.dart                     # App entry point
│
├── screens/                      # Core screens
│   ├── bottom_bar.dart           # Bottom navigation
│   ├── home_screen.dart          # Home page with deals
│   ├── hotel_screen.dart         # Hotel listings
│   ├── profile_screen.dart       # User profile page
│   ├── search_screen.dart        # Flight search UI
│   ├── ticket_screen.dart        # Booking details screen
│   └── ticket_view.dart          # Ticket UI component
│
├── utils/                        # Utilities & constants
│   ├── app_info_list.dart        # Flight/hotel dummy data
│   ├── app_layout.dart           # Responsive utilities
│   └── app_styles.dart           # Global theming and styles
│
└── widgets/                      # Custom reusable widgets
    ├── column_layout.dart        # Profile/stat layout
    ├── double_text_widget.dart   # Styled dual text
    ├── icon_text_widget.dart     # Icon-text pairing
    ├── layout_builder_widget.dart # Responsive builder
    ├── thick_container.dart      # Styled border containers
    └── ticket_tabs.dart          # Tab interface for tickets
```

---

## ✨ Key Features

### 🖥️ Core Screens
- **Home**: Flight deals, hotels, and quick actions
- **Search**: Easily search flights and hotels
- **Profile**: Manage user info and view rewards
- **Ticket View**: See flight & hotel booking details
- **Hotels**: Browse and explore accommodations

### 🎨 UI/UX Components
- Beautiful **ticket views**
- Custom **bottom bar navigation**
- **Responsive design** for all screen sizes
- Clean & consistent theming with `app_styles.dart`

---

## 🚀 Getting Started

To run the app locally:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/SoftTac/FlyEase.git
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Launch the app**:
   ```bash
   flutter run
   ```

---

## 🎨 Customization

### 🎯 Update Styles
Edit `lib/utils/app_styles.dart` to customize:
- Colors
- Typography
- Button/text themes

### 🗃️ Modify Data
Update `lib/utils/app_info_list.dart` to change:
- Flight/hotel listings
- Dummy pricing or airline info
- Promotional content

---

## 🛠️ Widget Guide

| Widget              | Description                          | Common Usage        |
|---------------------|--------------------------------------|---------------------|
| `ThickContainer`     | Rounded box with custom border        | Ticket section UI   |
| `DoubleTextWidget`   | Title + subtitle layout               | Pricing, headers    |
| `IconTextWidget`     | Icon with description text            | Feature grid        |
| `ColumnLayout`       | Styled vertical layout for stats      | Profile info blocks |
| `TicketTabs`         | Tabbed UI interface for tickets       | Flight tabs         |
| `LayoutBuilderWidget`| Responsive size management            | Flexible UIs        |

---

## 📱 Screenshots

| Home | Search | Profile |
|------|--------|---------|
| ![Home Screen](https://github.com/user-attachments/assets/9242fa58-b004-4e12-b79c-0a30db91f67c) |
| ![Search Screen](https://github.com/user-attachments/assets/c1f2e2b0-893f-474b-b2fd-e062bf050079) |
| ![Profile Screen](https://github.com/user-attachments/assets/93f90acd-a7a6-496d-88cf-342a6fd6a26c) |

---

## 🧱 Building Blocks

### 📐 Layout System
- Built with responsive design using `LayoutBuilder`
- Screen-size-aware UIs with consistent spacing
- Works on tablets, phones, and more

### 🧩 UI Patterns
- **Reusable widgets** from `/widgets`
- **Separation of concerns** by folder structure
- **Centralized styling** for consistency

---

## 🤝 Contributing

1. Fork this repo 🍴  
2. Create a feature branch 🔧  
3. Commit your changes ✅  
4. Push to your branch 🚀  
5. Open a Pull Request 📬  

---

## 👨‍💻 Developed By

**Ahmad Khalil Khattak**  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/ahmad-khalil-33bbb4283/)  
🌐 [GitHub - SoftTac](https://github.com/SoftTac)  

> *"Turning ideas into impactful solutions through code and innovation!"*

---

📦 [FlyEase GitHub Repository](https://github.com/SoftTac/FlyEase)
```

---
