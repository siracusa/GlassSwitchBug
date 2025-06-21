# Sample Project for FB18256794

This project demonstrates a bug where the `.glassEffect()` modifier fails to show an un-tinted glass effect after it has shown a tinted glass effect one time. See [the code in ContentView.swift for details](https://github.com/siracusa/GlassSwitchBug/blob/main/GlassSwitchBug/ContentView.swift#L35).

**Expected behavior:** Clicking the "Toggle Tint" button should toggle the teal-tinted background on and off.

**Actual behavior:** The first click on the "Toggle Tint" button makes the teal-tinted background appear, but clicking the button again does _not_ remove the teal tint. The background stays teal from now on, no matter how many times you click the button.

<img src="https://github.com/siracusa/GlassSwitchBug/blob/main/screenshot1.png?raw=true" width=662 alt="Screenshot 1">

<img src="https://github.com/siracusa/GlassSwitchBug/blob/main/screenshot2.png?raw=true" width=662 alt="Screenshot 2">

<img src="https://github.com/siracusa/GlassSwitchBug/blob/main/screenshot3.png?raw=true" width=662 alt="Screenshot 3">
