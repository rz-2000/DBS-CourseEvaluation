target=$(wget -O- -t3 -T5 https://api.github.com/repos/OhnkytaBlabdey/ouc-databasesystem-2020-frontend/releases/latest | jq '.assets[0].browser_download_url' | tr -d '"')
# target=https://github.com/OhnkytaBlabdey/ouc-databasesystem-2020-frontend/releases/download/1.0.14/web.7z
echo url : ${target}
wget -t6 -T6 ${target}
7z x -y web.7z -osrc/main/resources/static/