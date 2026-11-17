# KEEP AWAKE

## Overview

KEEP AWAKE is a lightweight Windows batch script designed to prevent the system from entering sleep mode due to inactivity by using the native Windows SetThreadExecutionState API.

Unlike solutions that simulate keyboard input or mouse movement, this script does **not** interact with any active application, ensuring that your work is not interrupted.

---

## Features

- Prevents the computer from entering sleep mode due to inactivity.
- Prevents the display from turning off automatically.
- Does not send keystrokes to active applications.
- Does not move the mouse cursor.
- Uses native Windows APIs.
- No installation required.
- No permanent system modifications.

---

## How It Works

The batch file launches a PowerShell command (There is also a Base 64 command version).

The PowerShell code:

1. Loads the Windows native SetThreadExecutionState function.
2. Requests Windows to keep the system and display active.
3. Refreshes this request every 120 seconds.
4. Runs continuously until manually stopped.

This approach is commonly used by presentation software, conferencing tools, and monitoring applications to prevent inactivity\-based power events.

---

## Requirements

- Windows 10 or later
- Windows PowerShell 5.1 or later
- Permission to run local PowerShell commands

---

## Usage

1. Run the BAT file.
2. A console window will appear displaying:
   
KEEP AWAKE IS NOW RUNNING, THIS CONSOLE/TERMINAL IS NOW LOCKED\!

PRESS CTRL \+ C TO STOP\!

1. Leave the window open while you want the system to remain awake.
2. To stop the script, press:CTRL \+ C
3. Confirm the termination if prompted.

---

## Safety

This script:

✅ Does not create or modify files.

✅ Does not modify the Windows Registry.

✅ Does not install services or scheduled tasks.

✅ Does not change power settings permanently.

✅ Does not monitor user activity.

✅ Does not send keyboard or mouse input.

✅ Does not interfere with active applications.

---

## Limitations

- The script must remain running to be effective.
- Once the script is terminated, Windows immediately returns to its normal power management behavior.
- It does not prevent manual shutdowns, reboots, or administrator\-enforced power policies.

---

## Technical Details

The script repeatedly calls:

SetThreadExecutionState(ES\_CONTINUOUS \| ES\_DISPLAY\_REQUIRED)

This informs Windows that the system should remain active and that the display is required, preventing inactivity\-based sleep and screen\-off events.

---

## Disclaimer

This tool is intended for legitimate use cases such as presentations, long\-running processes, monitoring tasks, downloads, and remote sessions. Always comply with your organization's IT and security policies when using software that affects system power behavior.

---

## Author

Diogo Santos Pombo - Created as a simple, non\-intrusive solution to keep Windows awake using only native operating system functionality.

