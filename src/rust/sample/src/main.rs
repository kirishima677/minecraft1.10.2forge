use std::io;

fn main() {
    // 標準出力
    println!("日本語の出力");

    println!("入力を受け付けます");

    //　変数の宣言
    let mut guess = String::new();

    //　入力を受け付ける、受けた値はguessに入る
    io::stdin().read_line(&mut guess)
        .expect("Failed to read line");
    println!("入力した値は: {}", guess);
}
