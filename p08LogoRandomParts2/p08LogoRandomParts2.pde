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
  frameRate(1);
}

// 実行中繰り返し実行される関数
void draw() {
  background(255);
  
  float logoSize = 50;
  PVector[] ignoreGrids = {};
  
  // ランダムなパーツを描く
  for (int j = -1; j < height / logoSize; j++) {
    for (int i = -1; i < width / logoSize; i++) {
      Boolean isDraw = true;
      Boolean isExpandable = true;
      float drawSize = logoSize;
      
      for (PVector g : ignoreGrids) {
        if (i == g.x && j == g.y) {
          isDraw = false;
        }
        if (i + 1 == g.x && j == g.y) {
          isExpandable = false;
        }
      }
      
      if (isDraw) {
        if (isExpandable) {
          float r = random(100);
          if (r < 20) {
             drawSize *= 2;
             ignoreGrids = (PVector[])append(ignoreGrids, new PVector(i, j + 1));
             ignoreGrids = (PVector[])append(ignoreGrids, new PVector(i + 1, j));
             ignoreGrids = (PVector[])append(ignoreGrids, new PVector(i + 1, j + 1));
          }
        }
        part(i * logoSize, j * logoSize, drawSize, drawSize);
      }
    }
  }
  
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
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

