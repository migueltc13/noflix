# Noflix

A simple bash script to stream movies from terminal using peerflix and VLC player.

## Features

- Search for movies using the title on command line
- Linux and macOS compatible (currently working on Windows version)
- Option of downloading the movie instead of streaming

## Cons

- Websites that provide magnet links are not always reliable, so you may not find the movie you want to stream.
- Some torrents are not available for streaming due to the lack of seeders.
- Requires a reliable internet connection.
- Torrents may expose your IP address to the world.

## Requirements

- peerflix
- VLC video player (optional[*](#video-player))
- bash (>=4.0.0)

## Installation

```bash
git clone https://github.com/noflix/noflix
cd noflix
chmod +x install.sh
./install.sh
ln -s noflix /usr/local/bin/noflix # optional (to use noflix anywhere in terminal)
```

The install script will install npm, curl, peerflix and VLC player, works both on Linux (apt) and macOS (brew).

## Usage:

```
./noflix title of movie 
```

## Example:

```
noflix "The Matrix 1999"
```

*Hints:*

- Add the launch year of the movie to increase search precision
- Add noflix to /usr/local/bin dir to use command anywhere in terminal

### Peerflix

<!-- Collapsible section - TODO add this to install.sh -->
<details>
<summary>Alternative peerflix installation with snap</summary>

```
sudo apt install snapd
```

```
sudo snap install peerflix --edge
```

</details>

You can check peerflix repository [here](). A special thanks to all contributors.

### Video player

(\*) You can edit the last line in noflix to open with other video player of your choice.

```bash
peerflix ${magnet} --vlc -- -f # -- passes the argument -f to vlc
```

```
-v, --vlc          autoplay in vlc*                             
-s, --airplay      autoplay via AirPlay                         
-m, --mplayer      autoplay in mplayer*                         
-g, --smplayer     autoplay in smplayer*                        
--mpchc            autoplay in MPC-HC player*                   
--potplayer        autoplay in Potplayer*                       
-k, --mpv          autoplay in mpv*                             
-o, --omx          autoplay in omx**                            
-w, --webplay      autoplay in webplay                          
-j, --jack         autoplay in omx** using the audio jack
```

### Download

You can download the movie instead of streaming it by removing the player flag.

Change this line in the end of the noflix script:

```bash
peerflix ${magnet} --vlc -- -f # -- passes the argument -f to vlc
```

To:

```bash
peerflix ${magnet}
```

Run the script again and the movie will be downloaded to the current directory.

### TODO

- [ ] Add support for Windows
