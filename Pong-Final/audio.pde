//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, song; //the songs/SFX
int currentSong = 0; //current song
//
void setupAudio() {
  minim = new Minim (this); //load from data directory
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile(pathway + song);//song
  loopInf(-1);
}//end setupAudio
void concatenationOfMusicFiles() {
  pathway = "data/";
  song = "BNHAMHA Lyric Prank 'Sk8r Boi' (Ft. Yn) (Denki x Yn).mp3";
}//end concatenationOfMusicFiles()
void loopInf(int loopInf) {//loop inf
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(loopInf);
}//end loopInf
void mute() { //mute button
  if ( songs[currentSong].isMuted() ) {//button works when song is not playing
    songs[currentSong].unmute();//switches off .mute()
  } else {//if song is not muted
    songs[currentSong].mute();//mutes song
  }//end mute button
}//end mute
//end Audio subProgram
