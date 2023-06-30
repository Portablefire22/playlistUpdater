
if [ -z $1 ]
then
    echo "Playlist URL: "
    read playlistUrl
else 
    playlistUrl=$1
fi

if [ -z $2 ]
then 
    echo "Playlist Name: "
    read playlistName
else 
    playlistName=$2
fi

mkdir $playlistName
cd $playlistName
arguments="'yt-dlp --embed-thumbnail --embed-metadata --extract-audio --audio-format mp3 --audio-quality 0 --sponsorblock-remove all ${playlistUrl}'"
echo $arguments
sh -c "yt-dlp --embed-thumbnail --embed-metadata --extract-audio --audio-format mp3 --audio-quality 0 --sponsorblock-remove all -o '%(title)s.%(ext)s' ${playlistUrl}"

### TODO
#    Copy the folder contents to phone, I'm using KDE so apparently it isn't as easy as gnome
