$InstallDir = "C:\Program Files (x86)\Steam\steamapps\common\Dead Cells"

PAKTool.exe -Expand -OutDir "$(pwd)\build\unpacked" -RefPak "$InstallDir\res.pak"
CDBTool.exe -Expand -OutDir "$(pwd)\build\castledb" -RefCdb "$(pwd)\build\unpacked\data.cdb"
TmxTool.exe -Expand -TmxBin "$(pwd)\build\unpacked\tiled" -TmxXml "$(pwd)\build\tiled"

Copy-Item -Path "patches\P_Disengage.json" -Destination "build\castledb\item\Perk\408---P_Disengage.json" -Force
# Copy-Item -Path "patches\PrisonFlaskRoom.tmx" -Destination "build\tiled\tmx\Prison\PrisonFlaskRoom.tmx" -Force

TmxTool.exe -Collapse -TmxBin "$(pwd)\build\tiled-bin" -TmxXml "$(pwd)\build\tiled"
Copy-Item -Path "$(pwd)\build\tiled-bin\tmx\Prison\PrisonFlaskRoom.tmx" -Destination "$(pwd)\build\unpacked\tiled\tmx\Prison\PrisonFlaskRoom.tmx" -Force

CDBTool.exe -Collapse -Indir "$(pwd)\build\castledb" -OutCdb "$(pwd)\build\unpacked\data.cdb"

PAKTool.exe -CreateDiffPak -RefPak "$InstallDir\res.pak" -InDir "$(pwd)\build\unpacked" -OutPak "$(pwd)\res.pak"
