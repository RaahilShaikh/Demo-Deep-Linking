# rahil_shaikh
<html>
    <h1>Demo of Deep-linking</h1>
    <p>
        This is simple <b>wallet app UI with deep-linking</b> integration.
        <br>I build this project with GetX state management.
        <br>I'll write the clean and clear code which help you to understand my development skill.
        <br>
        <br>
        In this code i used <a href="https://pub.dev/packages/uni_links">uni_link</a> flutter package.
        Only the android side integration is done in this code.
        <br>
        to check code simply install the app in your emulator or physical device.
        <br>
        if you check this in emulator follow the below steps to check uni_link functionality.
        <br>1.) Open cmd in your system and go to the /platform-tools/ path of your sdk file.
        <br>2.) run => adb shell am start -W -a android.intent.action.VIEW -d "MyWalletApp://demo-uniLink/home"
        <br>For diff screen change the screen name in cmd
        <br>For Home screen -> MyWalletApp://demo-uniLink/home
        <br>For Challenges screen -> MyWalletApp://demo-uniLink/challenge
        <br>For Pomodoro screen -> MyWalletApp://demo-uniLink/pomodoro
        <br>For TimeBox screen -> MyWalletApp://demo-uniLink/timeBox
        <br>For Account screen -> MyWalletApp://demo-uniLink/account
    </p>
    <div style="display: flex; flex-direction: row;">
        <img src="images/Screen1.png" alt="Screen 1" width="185" height="400">
        <img src="images/Screen2.png" alt="Screen 2" width="185" height="400">
        <img src="images/Screen3.png" alt="Screen 3" width="185" height="400">
    </div>
    <div>
        <img src="images/img_cmdOfUniLink.png" alt="img_cmdOfUniLink" width="400" height="200">
    </div>
    <p>Developer : <b><i>Rahil Shaikh</i></b></p>
    <p>Email : <b><i>rahils416@gmail.com</i></b></p>
</html>