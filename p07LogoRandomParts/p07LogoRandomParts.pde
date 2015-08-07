/*
 * Tokyo 2020 Emblem
 * modified by Tatsuo Sugimoto
 * based on by Akihiro Kubota
 */

// 最初に1回実行される関数
void setup() {
  // ウィンドウのサイズ
  size(500, 500);
  // フレームレート
  frameRate(2);
}

// 実行中繰り返し実行される関数
void draw() {
  background(255);
  // ランダムなパーツを描く
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      part(i * 100, j * 100, 100, 100);
    }
  }
}

// ランダムなパーツを描く関数（自作）
void part(float x, float y, float w, float h) {
  int mode = int(random(3));
  float r = dist(w, 0, w * 1.5, h * 1.5);
 
  clip(x, y, w, h);
  fill(randomColor());
  noStroke();
  
  switch (mode) {
    case 0:
      rect(x, y, w, h);
      break;
    case 1:
      ellipse(x + w / 2, y + h / 2, w, h);
      break;
    case 2:
      rect(x, y, w, h);      
      fill(255);
      int direction = int(random(4));
      switch (direction) {
        case 0:
          arc(x + w * 1.5, y + h * 1.5, r * 2, r * 2, 0, TWO_PI);
          break;
        case 1:
          arc(x - w * 0.5, y + h * 1.5, r * 2, r * 2, 0, TWO_PI);
          break;
        case 2:
          arc(x - w * 0.5, y - h * 0.5, r * 2, r * 2, 0, TWO_PI);
          break;
        case 3:
          arc(x + w * 1.5, y - h * 0.5, r * 2, r * 2, 0, TWO_PI);
          break;
      }
      break;
  }
  clip(0, 0, width, height);
}

// ランダムな色を返す関数（自作）
color randomColor() {
  color result = color(0);
  
  int mode = int(random(5));
  
  switch (mode) {
    case 0:
      result = color(255); // White
      break;
    case 1:
      result = color(0); // Black
      break;
    case 2:
      result = color(172, 141, 78); // Gold
      break;
    case 3:
      result = color(180); // Silver
      break;
    case 4:
      result = color(196, 57, 50); // Red
      break;
  }
  
  return result;
}

