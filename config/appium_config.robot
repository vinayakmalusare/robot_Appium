*** Settings ***
Library    AppiumLibrary
*** Variables ***
${REMOTE_URL}           http://localhost:4723

# Android Physical Device (App Already Installed)
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_DEVICE_NAME}        RZCXB1KW7YD             # Use `adb devices` to get ID
${ANDROID_PLATFORM_VERSION}   14                      # Your Android version
${ANDROID_AUTOMATION_NAME}    UiAutomator2
${ANDROID_APP_PACKAGE}        com.obs.android.olm.demo.cert         # Replace with your app package
${ANDROID_APP_ACTIVITY}       com.obs.android.messenger.MainActivity             # Replace with your app’s main activity
${appWaitActivity}            com.obs.android.messenger.*
# iOS Physical Device (still uses .app path)
${IOS_PLATFORM_NAME}          iOS
${IOS_DEVICE_NAME}            iPhone 13 Pro
${IOS_PLATFORM_VERSION}       17.0
${IOS_APP}                    /path/to/your-app.app
${IOS_AUTOMATION_NAME}        XCUITest
${IOS_UDID}                   auto
${XCODE_ORG_ID}               YOUR_TEAM_ID
${XCODE_SIGNING_ID}           iPhone Developer

*** Keywords ***
Open Android Installed App
    Open Application    ${REMOTE_URL}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    deviceName=${ANDROID_DEVICE_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}
    ...    appActivity=${ANDROID_APP_ACTIVITY}
    ...    noReset=true

Open iOS Physical Device
    Open Application    ${REMOTE_URL}
    ...    platformName=${IOS_PLATFORM_NAME}
    ...    deviceName=${IOS_DEVICE_NAME}
    ...    platformVersion=${IOS_PLATFORM_VERSION}
    ...    automationName=${IOS_AUTOMATION_NAME}
    ...    app=${IOS_APP}
    ...    udid=${IOS_UDID}
    ...    xcodeOrgId=${XCODE_ORG_ID}
    ...    xcodeSigningId=${XCODE_SIGNING_ID}
    ...    useNewWDA=true
    ...    noReset=true

Close Application
    Close Application