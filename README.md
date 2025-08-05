# Update
This terminal command also has the same effect and doesn't require disabling SIP, however you will lose the new Spotlight.

``` 
sudo mkdir -p /Library/Preferences/FeatureFlags/Domain
sudo defaults write /Library/Preferences/FeatureFlags/Domain/SpotlightUI.plist SpotlightPlus -dict Enabled -bool false
```

To undo the change

```
sudo rm -rf /Library/Preferences/FeatureFlags
```

After running either set of commands `reboot`.

Thanks to @asentientbot

# Image
<img width="1512" alt="image" src="https://github.com/user-attachments/assets/79a33d39-59c9-4db2-8453-8f4acf447a7a" />

# Info 
Hooks a feature flag to bring back old launchpad

# Requirements
-arm64e-preview-abi=1 or amfi_get_out_of_my_way=1 boot args (which also means disabled SIP and reduced/permissive security)

Tweak injection platform instealled (specifically ellekit).

# Building using Theos

Needed to build for any macOS tweak currently, move back if you build for other platforms.

`mv $THEOS/vendor/include/{IOKit,IOKit_iOS}`

`make clean package`

# Limitations
Clicking Apps.app icon again doesn't exit launchpad, can be fixed by just using Launchpad.app instead of Apps.app. As an FYI to anyone, Launchpad.app has been removed in macOS 26 Developer Beta 4 and just adding it back to /Applications from an older macOS version doesn't work.

As an FYI to anyone updating to macOS 26 Developer Beta 5, Launchpad has officially been fully removed. It is not possible to get it back via the terminal command or the Ellekit tweak. It is now dead. At some point in the future this repo might be archived.
