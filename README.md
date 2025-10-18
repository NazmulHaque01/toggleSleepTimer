# ⚡ Sleep Mode Toggle Script for Windows
A simple interactive batch script to toggle between two Windows power plans—one that enables automatic sleep after 10 minutes, and one that disables sleep entirely. Ideal for quick switching during work, gaming, or downloads!


## 🚀 Features
- Shows your current active power plan
- Press t + Enter to toggle between:
- 💤 SleepAfter10 → Auto sleep after 10 minutes
- 🧠 Balanced or NoSleep → No auto sleep
- Interactive loop in Command Prompt
- Lightweight and portable—just one .bat file


## 🛠 Setup Instructions
1. 🔧 Create Power Plans
- Open Control Panel → System and Security → Power Options
- Create a power plan



2. 📋 Get Their GUIDs
- Run this in Command Prompt:     powercfg /list
- Copy the GUIDs of your two plans (e.g. 381b4222-f694-####-####-ff5bb260df2e and d13d5c14-####-####-a19d-6f6858321f87)


3. 📝 Edit the Script
Replace the placeholders in the script:
powercfg /setactive ......Power Plan's GUID......
With your actual GUIDs.



## 📦 How to Use
- Double-click the .bat file
- View your current power plan
- Press t + Enter to toggle
- Press any other key to exit
