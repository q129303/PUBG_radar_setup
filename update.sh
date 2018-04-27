#!/bin/bash
rm -r PUBG-Radar

git clone https://github.com/q129303/PUBG-Radar
cd PUBG-Radar

PS3="请选择地图? "
options=("4k Map" "8k Map")
select opt in "${options[@]}"
do
    case $opt in
        "4k Map")
            echo "Using 4k Map"
            if [ -e src/main/resources/maps/Erangel4k.png ]
            then
              mv src/main/resources/maps/Erangel_Minimap.png src/main/resources/maps/Erangel8k.png
              mv src/main/resources/maps/Miramar_Minimap.png src/main/resources/maps/Miramar8k.png
              mv src/main/resources/maps/Erangel4k.png src/main/resources/maps/Erangel_Minimap.png
              mv src/main/resources/maps/Miramar4k.png src/main/resources/maps/Miramar_Minimap.png
            fi
            break
            ;;
        "8k Map")
            echo "Using 8k Map"
            if [ -e src/main/resources/maps/Erangel8k.png ]
            then
              mv src/main/resources/maps/Erangel_Minimap.png src/main/resources/maps/Erangel4k.png
              mv src/main/resources/maps/Miramar_Minimap.png src/main/resources/maps/Miramar4k.png
              mv src/main/resources/maps/Erangel8k.png src/main/resources/maps/Erangel_Minimap.png
              mv src/main/resources/maps/Miramar8k.png src/main/resources/maps/Miramar_Minimap.png
            fi
            break
            ;;
        *) echo invalid option;;
    esac
done

mvn -T 1C clean verify install

cd ..

if [ -e run.sh ]
then
  echo "Keep previous run.sh [Y/N]? "
  read keep
  if [ "$keep" != "${keep#[Yy]}" ]
  then
    exit
  fi
fi

wget https://raw.githubusercontent.com/q129303/PUBG_radar_setup/master/create_run.sh -O create_run.sh
chmod +x create_run.sh
./create_run.sh
