## Dead Cells Mod: Infinite Force Field

<img src="https://raw.githubusercontent.com/lerarosalene/dc-infinite-force-field/bd9bff6d4988580c2cf1848958565b7915fe2ca5/metadata/preview.jpg" width="600" />

Download and install via [steam workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=2946881453).

This mod:
- changes Disengagement mutation to grant you force field at 100% health instead of 15%
- makes it last 10 hours
- makes it's cooldown 0: even attacks that normally damage you through force field would immediately trigger Disengagement again and heal you back to 100%
- places Disengagement in starting room near boss cells tube (free to pick up) along with Face Flask (to activate it instantly)
- places Disengagement in armory in Boss Rush along with Face Flask (once per run)

Last compatibility check: 3.2

## Build it yourself

- `.\build.ps1 build` to create res.pak
- `.\build.ps1 pub` to prepare publish directory to upload fork to steam workshop (change name in metadata.json if you want to do this)
- `.\build.ps1 check` to unpak res.pak to `check` to check what files it contains
- `.\build.ps1 ref` to unpak res.pak of main game in `reference` directory to veiw what's originally inside (it unpacks CDB and TMX files too)
- `.\build.ps1 clean` to remove all files created by this script, including `publish/` and `res.pak`
- `.\build.ps1 live` to patch YOUR ORIGINAL res.pak with this mod (it will allow to use this mod and still have achievements). WARNING: before running any other command besides clean, restore your original res.pak in game folder (Steam can do it for you)
