Here’s a **README.md** file for your GitHub project showcasing the **Global Popover Manager**:

---

# Global Popover Manager in SwiftUI

This project implements a **Global Popover Manager** in SwiftUI, providing a centralized system to manage multiple popovers or modals. The manager ensures that only one popover is open at a time, making the UI consistent and easy to control. With smooth animations and a reusable architecture, this project demonstrates advanced state management and clean design principles in SwiftUI.

---

## Features

- **Centralized Popover Management**:
  - A single `PopoverManager` handles all popovers globally.

- **Dynamic Popover Content**:
  - Popovers are dynamically loaded based on the selected popover type.

- **Smooth Animations**:
  - Popovers include transitions and fade-in effects for a polished look.

- **Reusable Architecture**:
  - A reusable `GlobalPopoverView` serves as a wrapper for content and modals.

- **Environment Object**:
  - The app uses `@EnvironmentObject` to manage state efficiently across views.

---

## How It Works

1. **Three Popovers**:
   - **Settings Popover**: Displays app settings.
   - **Profile Popover**: Shows user profile information.
   - **Notifications Popover**: Displays recent notifications.

2. **Centralized Control**:
   - The `PopoverManager` manages which popover is active and ensures only one is open at a time.

3. **Reusable Popover View**:
   - The `GlobalPopoverView` dynamically loads and displays the active popover.

---

## Screenshots

| **Main View** | **Settings Popover** | **Notifications Popover** | **Profile` Popover** |
|---------------|-----------------------|----------------------------|
| ![Main View]([assets/main_view.png](https://github.com/user-attachments/assets/c2a6dff3-dfb1-41dd-9a44-9ec8de9d327f)) | ![Settings Popover]([assets/settings_popover.png](https://github.com/user-attachments/assets/6f4d3b92-d055-4dd2-926f-8e9d2dd950f8)) | ![Notifications Popover]([assets/notifications_popover.png](https://github.com/user-attachments/assets/9eac9d6a-2a0f-45ef-9240-a7143def835a)) | ![Profile Popover]([[assets/notifications_popover.png](https://github.com/user-attachments/assets/9eac9d6a-2a0f-45ef-9240-a7143def835a](https://github.com/user-attachments/assets/b345dbab-ab7e-48e0-9358-fc41902ec709))) |

`
---

## Code Structure

### 1. `PopoverManager.swift`
The central state management class that tracks the active popover and provides methods to show and close popovers.

### 2. `GlobalPopoverView.swift`
A reusable wrapper view that overlays the active popover over the main content.

### 3. Popover Content Views
Separate SwiftUI views for each popover:
- `SettingsPopoverView`
- `ProfilePopoverView`
- `NotificationsPopoverView`

### 4. `ContentView.swift`
The main interface, with buttons to open each popover and demonstrate the `PopoverManager`'s functionality.

---

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/sahinraj/Global-Popover-Manager.git
   cd global-popover-manager
   ```

2. Open the project in Xcode:
   ```bash
   open GlobalPopoverManager.xcodeproj
   ```

3. Run the app on the simulator or a physical device.

---

## Usage

### Adding a New Popover

1. **Add a New Popover Type**:
   - Update the `PopoverType` enum in `PopoverManager.swift`:
     ```swift
     case newPopover
     ```

2. **Create a New Popover View**:
   - Create a new SwiftUI view for the popover content, e.g., `NewPopoverView`.

3. **Update `GlobalPopoverView`**:
   - Add the new popover view to the `popoverContent(for:)` method:
     ```swift
     case .newPopover:
         NewPopoverView()
     ```

4. **Show the New Popover**:
   - Use `popoverManager.showPopover(.newPopover)` to display the new popover.

---

## Requirements

- **iOS 16.0+**
- **Xcode 14.0+**
- **Swift 5.7+**

---

## Future Improvements

- Add support for popover stacking or multiple simultaneous modals.
- Customize animations for different popovers.
- Enhance the `PopoverManager` to support custom transitions and configurations.

---

## Contribution

Contributions are welcome! Feel free to open issues or submit pull requests for improvements or new features.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Author

**Sahin Raj**  
- [GitHub](https://github.com/sahinraj)  
- [LinkedIn](https://www.linkedin.com/in/sahinraj/)  

---
