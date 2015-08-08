#Creative Coding School in Sapporo 2015 vol.1

#ループして図形を描く2

```Processing:first.pde
// 最初に1回実行される関数
void setup() {
  // ウィンドウのサイズ
  size(500, 500);
  // 背景色
  background(220);
  // ロゴを描く
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      logo(i * 100, j * 100, 100, 100);
    }
  }
}

// 実行中繰り返し実行される関数
void draw() {
}

// ロゴを描く関数（自作）
void logo(float x, float y, float w, float h) {
	//あなたのコード
}
```

##for文を2段階にする

for文のなかにfor文を入れて、2次元のループを作ります。

```processing
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
	    //ここに繰り返し実行するコードを書きます
    }
  }
```

