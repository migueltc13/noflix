# Notflix

#### Usage:   
```
./notflix.sh title of movie 
```

---

#### Hints:
- Add the launch year of the movie to have more precision;  
- Add notflix.sh to /usr/local/bin dir to use command anywhere in terminal;    

---

#### Requirements:
+ peerflix 
+ VLC(\*)  

---

#### Install peerflix (Ubuntu):
```
sudo snap install peerflix --edge
```

---

(\*) You can edit the last line in notflix.sh or notflix_basic.sh to open with other video player of your choice.

```bash
peerflix $magnet --vlc -- -f # -- passes the argument -f to vlc
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
