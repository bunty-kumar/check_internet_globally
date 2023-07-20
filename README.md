# Check Internet Globally in your app

## Overview
Maintaining a reliable internet connection is crucial for delivering a seamless user experience in a mobile app. This project explores three popular state management approaches in Flutter to handle the global internet connectivity check:

Bloc: Implementing the connectivity check using the Bloc pattern.
Cubit: Implementing the connectivity check using the Cubit pattern (which is similar to Bloc but simpler).
Provider: Implementing the connectivity check using the Provider package.
Each approach is showcased in separate directories (bloc, cubit, and provider), and each directory contains a main.dart file to demonstrate the implementation.

## Demo Video

Click [here](https://youtube.com/shorts/j4ID9MyL3gA?feature=share4) to watch the demo video of the Quotes app.

## Screenshots

![Choose Type Screen](https://github.com/bunty-kumar/check_internet_globally/blob/master/choose_type_screen.jpg?raw=true)
![Home Screen Search Filter](https://github.com/bunty-kumar/aesthetic_wallpaper/blob/master/home_screen_search_filter.JPEG)
![download image](https://github.com/bunty-kumar/aesthetic_wallpaper/blob/master/download_image.JPEG)
![set wallpaper](https://github.com/bunty-kumar/aesthetic_wallpaper/blob/master/set_wallpaper_menu.JPEG)

## Getting Started
To use this code sample, follow these steps:

Clone the repository to your local machine.
Open the project in your preferred Flutter IDE.
Run flutter pub get to get the required packages.
Connectivity Package
The Connectivity package is used to check the internet connectivity status. It provides an easy-to-use API that allows us to subscribe to connectivity changes and handle different connection states (Online/Offline).

You can find the connectivity package documentation here: Connectivity Package.

## Bloc Pattern
In the bloc directory, we demonstrate how to implement the Bloc pattern for internet connectivity checks. We use the Bloc library to manage the state and events related to the network connectivity.

## Cubit Pattern
In the cubit directory, we demonstrate how to implement the Cubit pattern for internet connectivity checks. The Cubit pattern is a lightweight version of the Bloc pattern, ideal for simple use cases.

## Provider Package
In the provider directory, we showcase how to use the Provider package for internet connectivity checks. The Provider package is a simple and flexible state management solution that integrates well with Flutter.

## Conclusion
Implementing a global internet connectivity check in a Flutter app is essential for providing a seamless user experience. By choosing the appropriate state management approach (Bloc, Cubit, or Provider) based on your app's complexity and requirements, you can efficiently handle the internet connectivity state throughout the app.

Feel free to explore each implementation in the respective directories and choose the one that best fits your needs.

Happy coding! 🚀

## Contributing

Contributions are welcome! If you have any ideas, bug fixes, or improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [Bunty Kumar] (LICENSE).

