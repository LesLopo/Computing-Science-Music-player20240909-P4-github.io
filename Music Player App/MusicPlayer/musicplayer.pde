import ddf.minim.*;

Minim minim;
AudioPlayer song;
int currentSongIndex = 0;
String[] musicList = {"music/Cycles.mp3", "music/Eureka.mp3", "music/Beat_Your_Competition.mp3"};
String[] images = {"images/boxinglol.jpg", "images/muaythai.jpg", "images/ruslxdteccmnsnklxg3l.jpg"};
PImage coverImages;

boolean isMuted = false;
boolean isRepeating = false;
boolean isShuffling = false;

void setup() {
  fullScreen();
  minim = new Minim(this);
  loadSong(currentSongIndex);
}

void draw() {
  background(100);

  // Cover image
  image(coverImages, width / 2 - 150, 50, 300, 300);

  // Song title
  fill(255);
  textAlign(CENTER);
  textSize(24);
  text(getSongName(musicList[currentSongIndex]), width / 2, 400);

  // Time display
  int elapsed = int(song.position() / 1000);
  int total = int(song.length() / 1000);
  String elapsedTime = nf(elapsed / 60, 2) + ":" + nf(elapsed % 60, 2);
  String totalTime = nf(total / 60, 2) + ":" + nf(total % 60, 2);
  text(elapsedTime + " / " + totalTime, width / 2, 450);

  // Buttons
  drawButton(width / 2 - 300, height - 100, "Reverse Skip");
  drawButton(width / 2 - 200, height - 100, "Skip");
  drawButton(width / 2 - 100, height - 100, "Pause/Play");
  drawButton(width / 2, height - 100, "Repeat");
  drawButton(width / 2 + 100, height - 100, "Shuffle");
  drawButton(width / 2 + 200, height - 100, "Mute");
  drawButton(width / 2 + 300, height - 100, "Quit");

  // Progress bar
  float progress = map(song.position(), 0, song.length(), 0, width - 100);
  fill(255, 0, 0);
  rect(50, height - 150, progress, 10);
  fill(255);
  rect(50 + progress, height - 150, width - 100 - progress, 10);
}

void drawButton(int x, int y, String label) {
  fill(0, 0, 255);
  rect(x, y, 80, 40);
  fill(255);
  textSize(12);
  textAlign(CENTER, CENTER);
  text(label, x + 40, y + 20);
}

void mousePressed() {
  if (mouseY > height - 100 && mouseY < height - 60) {
    if (mouseX > width / 2 - 300 && mouseX < width / 2 - 220) {
      reverseSkipSong();
    } else if (mouseX > width / 2 - 200 && mouseX < width / 2 - 120) {
      skipSong();
    } else if (mouseX > width / 2 - 100 && mouseX < width / 2 - 20) {
      pausePlaySong();
    } else if (mouseX > width / 2 && mouseX < width / 2 + 80) {
      toggleRepeat();
    } else if (mouseX > width / 2 + 100 && mouseX < width / 2 + 180) {
      toggleShuffle();
    } else if (mouseX > width / 2 + 200 && mouseX < width / 2 + 280) {
      muteSong();
    } else if (mouseX > width / 2 + 300 && mouseX < width / 2 + 380) {
      quitApp();
    }
  }
}

void loadSong(int index) {
  if (song != null) song.close();
  music = minim.loadFile(musicList[index]);
  coverImages = loadImages(coverImages[index]);
  song.play();
}

void skipSong() {
  currentMusicIndex = (currentMusicIndex + 1) % musicList.length;
  loadSong(currentSongIndex);
}

void reverseSkipSong() {
  currentSongIndex = (currentSongIndex - 1 + songList.length) % songList.length;
  loadSong(currentSongIndex);
}

void pausePlaySong() {
  if (song.isPlaying()) {
    song.pause();
  } else {
    song.play();
  }
}

void toggleRepeat() {
  isRepeating = !isRepeating;
  if (isRepeating) song.loop();
  else song.play();
}

void toggleShuffle() {
  isShuffling = !isShuffling;
  if (isShuffling) {
    currentSongIndex = int(random(songList.length));
    loadSong(currentSongIndex);
  }
}

void muteSong() {
  isMuted = !isMuted;
  if (isMuted) song.mute();
  else song.unmute();
}

void quitApp() {
  exit();
}

String getSongName(String path) {
  String[] parts = path.split("/");
  return parts[parts.length - 1].replace(".mp3", "");
}
