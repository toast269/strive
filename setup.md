# Setting Up StriveHunger App in Android Studio

Follow these step-by-step instructions to set up and run the StriveHunger app in Android Studio:

## Prerequisites

Before proceeding, ensure that you have the following installed:

- Android Studio: Download and install the latest version of Android Studio from the official website: [Android Studio Download](https://developer.android.com/studio).
- Flutter SDK: Install Flutter by following the instructions provided in the official Flutter documentation: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install).

## Steps to Setup StriveHunger App

1. **Clone the Repository:**
   Clone the StriveHunger repository to your local machine using Git:
   `git clone https://github.com/toast269/strive.git`

2. **Open Project in Android Studio:**
   Open Android Studio and select "Open an existing Android Studio project" from the welcome screen. Navigate to the directory where you cloned the StriveHunger repository and select the `foodshare` folder.

3. **Set Up Firebase Project:**

- Create a new Firebase project or use an existing one by visiting the [Firebase Console](https://console.firebase.google.com/).
- Add an Android app to your Firebase project and follow the setup instructions to download the `google-services.json` file.
- Place the `google-services.json` file in the `android/app` directory of your StriveHunger project.

4. **Configure Firebase Authentication and Firestore:**

- Enable Firebase Authentication and Firestore for your Firebase project through the Firebase Console.
- Set up authentication methods and database rules as per your project requirements.

5. **Install Dependencies:**
   Open a terminal window in Android Studio or navigate to your StriveHunger project directory in your command line interface and run the following command to install dependencies:
   `flutter pub get`

6. **Run the App:**
   Connect your Android device to your computer using a USB cable or use an Android emulator.
   In Android Studio, select your device from the target device dropdown menu and click on the green "Run" button to build and install the StriveHunger app on your device.

7. **Enable Debugging:**
   If you're using a physical device for testing, ensure that USB debugging is enabled in your device's developer settings.

## Running the App

Once the app is successfully installed on your device, you can launch it and!!!!

That's it! You have successfully set up and run the StriveHunger app in Android Studio. If you encounter any issues during the setup process, refer to the official Flutter and Firebase documentation or reach out to the StriveHunger community for assistance.
