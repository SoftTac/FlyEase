```markdown
# FlyEase ✈️ - Flight & Hotel Booking App

![FlyEase App Screens](assets/app_banner.png)

A complete Flutter travel booking application with beautiful UI components and smooth user experience.

## Project Structure 🗂️

```
lib/
├── main.dart                  # App entry point
│
├── screens/                   # All application screens
│   ├── bottom_bar.dart        # Bottom navigation bar
│   ├── home_screen.dart       # Main dashboard
│   ├── hotel_screen.dart      # Hotel booking
│   ├── profile_screen.dart    # User profile & rewards
│   ├── search_screen.dart     # Flight search
│   ├── ticket_screen.dart     # Ticket details
│   └── ticket_view.dart       # Ticket UI component
│
├── utils/                     # Utilities & constants
│   ├── app_info_list.dart     # App data constants
│   ├── app_layout.dart        # Responsive layout utils
│   └── app_styles.dart        # App styling/theming
│
└── widgets/                   # Reusable UI components
    ├── column_layout.dart     # Custom column layout
    ├── double_text_widget.dart # Dual text widget
    ├── icon_text_widget.dart  # Icon + text combo
    ├── layout_builder_widget.dart # Responsive builder
    ├── thick_container.dart   # Styled container
    └── ticket_tabs.dart       # Tabbed ticket view
```

## Key Features ✨

### Core Screens
- **Home Screen**: Flight deals and quick actions
- **Search Screen**: Find flights and hotels
- **Ticket Screen**: View booking details
- **Profile Screen**: Manage account and rewards
- **Hotel Screen**: Browse accommodations

### UI Components
- **Custom Bottom Bar**: Persistent navigation
- **Responsive Layouts**: Works on all devices
- **Ticket Views**: Beautiful ticket displays
- **Text Widgets**: Pre-styled text components

## Getting Started 🚀

1. Clone the repository:
   ```bash
   git clone https://github.com/SoftTac/FlyEase.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Customization 🎨

### Modify App Theme
Edit `lib/utils/app_styles.dart` to change:
- Color scheme
- Typography
- App-wide styling

### Update Content
Edit `lib/utils/app_info_list.dart` to modify:
- Flight/hotel data
- Promotional content
- Static app information

## Widget Guide 🛠️

| Widget | Description | Usage Example |
|--------|-------------|---------------|
| `ThickContainer` | Styled container with border | Ticket sections |
| `DoubleTextWidget` | Two text elements with different styles | Price displays |
| `IconTextWidget` | Icon + text combination | Feature items |
| `ColumnLayout` | Custom column arrangement | Profile stats |
| `TicketTabs` | Tabbed ticket interface | Flight details |

## Screenshots 📱

| Home | Search | Profile |
|------|--------|---------|
![Flutter Ticket Booking App](https://github.com/user-attachments/assets/9242fa58-b004-4e12-b79c-0a30db91f67c)


![iPhone 16 Pro](https://github.com/user-attachments/assets/c1f2e2b0-893f-474b-b2fd-e062bf050079)

![iPhone 15 Pro](https://github.com/user-attachments/assets/93f90acd-a7a6-496d-88cf-342a6fd6a26c)

## Building Blocks 🧱

### Layout System
- Uses `app_layout.dart` for responsive design
- Consistent spacing with `LayoutBuilderWidget`
- Adaptive components for all screen sizes

### UI Patterns
- Reusable widgets in `/widgets` folder
- Screen-specific components in `/screens`
- Centralized styling in `app_styles.dart`

## Contributing 🤝

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request



---

✈️ Developed with Flutter by [Ahmad Khalil Khattak] ✈️  
🔗 [GitHub Repository](https://github.com/SoftTac/FlyEase)
```
