# SemanticFileSystem
プロジェクト演習 2018 で出たアイデア。調査不足のため、実現可能性低め。

### 一応、簡単な概要を書いておく
* Ruby on Rails & MySQL を使用。
* MySQL と連携してデータを管理する。
* MySQL の正規化は　TOXI 法を使用して行う予定。（参考文献：[【MySQL】タグ付け機能の実装にオススメなテーブル設計（TOXI法）その1](https://senews.jp/toxi1/)）
* 機能としては、ファイルのアップロードとダウンロード、データの削除ができればOK。
* とりあえず WEB クライアントのみ実装。スマホクライアントは、超余裕があったらやる。
  
  
### DB について
Rails だと Model 作成時に必要なくなるカラムもあるだろうけど一応記述  

FileName テーブル（アップロードしたファイルを格納するテーブル）

* id - INT primary key auto_increment
* name - VARCHAR(255) not null
* file - binary not null
* description - TEXT

TAG テーブル（タグ名を保存するテーブル）

* id - INT primary key auto_increment
* name - VARCHAR(255) not null

Author テーブル

* id - INT primary key auto_increment
* name - VARCHAR(255) not null

Tag_Map テーブル（ファイルとタグを結びつけるテーブル）

* id - INT primary key auto_increment
* name_id - int not null
* tag_id - int not null

（例）  
FileName テーブル

| id | name | file | description |
|:-------:|:--------|:--------|:--------|
| 1 | AAA.txt | バイナリファイル | None |
| 2 | BBB.png | バイナリファイル | アイガモの小屋の画像 |
| 3 | CCC.docx | バイナリファイル | 来年の農法についての改善案 |
| 4 | DDD.docx | バイナリファイル | 20XXMMDD_定例会議_議事録 |
| 5 | EEE.pdf | バイナリファイル | 20XXMMDD_ポスター |

TAG テーブル

| id | name |
|:-------:|:--------|
| 1 | 事務作業 |
| 2 | 広報 |
| 3 | 農業 |
| 4 | その他 |

Author テーブル

| id | name |
|:-------:|:--------|
| 1 | ダミー |
| 2 | ダミー |
| 3 | ダミー |

Tag_Map テーブル

| id | name_id | tag_id |
|:-------:|:--------|:--------|
| 1 | 1 | 4 |
| 2 | 2 | 3 |
| 3 | 3 | 1 |
| 4 | 4 | 1 |
| 5 | 5 | 2 |

#### クライアントについて
ブラウザで表示される部分  
`/files/`  
簡易的なトップページ  
ログイン機能も実装できると良い  
  
`/files/upload`  
ファイルをアップロードするページ  
POST で送信かな？
  
`/files/search`  
ファイルの検索を行うページ  
AND 検索と OR 検索に対応する  
キーワードは、なんでもOKで製作者やファイル名が対象になる  
  
`/files/search/{:id}`  
1件1件を検索する機能

`/files/delete`  
ファイルの削除を行う機能
削除後にページが表示される
  
APIとして提供する部分  
`/api/upload`  
`/api/search`  
`/api/search/{:id}`  
`/api/delete`