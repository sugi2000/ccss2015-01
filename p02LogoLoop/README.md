#Creative Coding School in Sapporo 2015 vol.1

#ループして図形を描く

```processing
// 最初に1回実行される関数
void setup() {
  // ウィンドウのサイズ
  size(500, 500);
  // 背景色
  background(220);
  // ロゴを描く
  for (int i = 0; i < 5; i++) {
    logo(i * 100, 0, 100, 100);
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

##for文を書こう

5回繰り返すときは次のように書きます。
繰り返す回数を変えるには、「5」の部分の数字を書き換えます。

```processing
  for (int i = 0; i < 5; i++) {
    //ここに繰り返し実行するコードを書きます
  }
```

