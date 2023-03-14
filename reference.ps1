$InstallDir = "C:\Program Files (x86)\Steam\steamapps\common\Dead Cells"

PAKTool.exe -Expand -OutDir "$(pwd)\reference\unpacked" -RefPak "$InstallDir\res.pak"
CDBTool.exe -Expand -OutDir "$(pwd)\reference\castledb" -RefCdb "$(pwd)\reference\unpacked\data.cdb"
TmxTool.exe -Expand -TmxBin "$(pwd)\reference\unpacked\tiled" -TmxXml "$(pwd)\reference\tiled"
