
# 概要
ローカルのテーブルの状態をSQLに保存し
いつでも巻き戻せるようにしたスクリプト

# 環境
mysqlが入っている


# 使い方

>   `$snapshot.sh `  
>   table-snapshotに書かれているtableのsnpashotを取る  
>   部分的なtableに使う

----

>   `$rollback.sh `  
>   snapshotをとった時の状態に戻す

----

>   `$snapshot.sh init`  
>   table-snapshot-initに書かれているtableのsnapshotを取る  
>   全体のテーブルに使う

----

`
$tree -L 1`  
├──  README.md  
├──  dump  
├──  rollback.sh  
├──  snapshot.sh  
├──  table-snapshot  
└──  table-snapshot-init  

# future work
- 例えば、`$snapshot.sh 1.00 `で特定のversionとして保存し呼び出せるようにする

- オプションでフォルダーをtarで固める
