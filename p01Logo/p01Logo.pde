/*
 * Tokyo 2020 Emblem
 * modified by Tatsuo Sugimoto
 * based on by Akihiro Kubota
 */

// 最初に1回実行される関数
void setup() {
  // サイズ
  size(500, 500);
  // 背景色
  background(220);
  // ロゴを描く
  logo(100, 100, 300, 300);
}

// 実行中繰り返し実行される関数
void draw() {
}

// ロゴを描く関数（自作）
void logo(float x, float y, float w, float h) {
  noStroke();
  
  fill(255); // White
  rect(x, y, w, h);
  
  float uw = w / 3.0;
  float uh = h / 3.0;
  
  fill(172, 141, 78); // Gold
  rect(x, y, uw, uh);
  
  fill(180); // Silver
  rect(x + uw * 2, y + uh * 2, uw, uh);

  float r = dist(uw, 0, w / 2.0, h / 2.0);
  println(r);
  
  fill(255); // White
  arc(x + w / 2.0, y + h / 2.0, r * 2, r * 2, atan2(-uh / 2.0, - w / 2.0), atan2(- h / 2.0, - uw / 2.0));
  arc(x + w / 2.0, y + h / 2.0, r * 2, r * 2, atan2(uh /2.0, w / 2.0), atan2(h / 2.0, uw / 2.0));
  
  fill(0); // Black
  rect(x + uw, y, uw, h);
  
  fill(196, 57, 50); // Red
  ellipse(x + uw * 2.5, y + uh / 2.0, uw, uh);
}
