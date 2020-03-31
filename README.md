# README

## APP名
TECH QUEST

## 概要
ゲーム戦闘シーンの再現。

勇者（ユーザー）がランダムに出てくるモンスターと戦闘。  
お互いにダメージを与え合い、どちらかのHPが0になると戦闘終了。  
新たなモンスターが出現＆戦闘をひたすら繰り返します。  

## リンク
<https://arcane-temple-26627.herokuapp.com/>

## 開発の背景
せっかく作るのであれば何か面白いものが作りたい。
また他の人にも見てもらうのであれば実際に使って、少しでも楽しんで貰いたい。
そう考えたときに誰もが知っていて、遊んだことのあるゲームがいいのではと思いました。
私自身、昔から遊んできたゲームというものが、どのような仕組みで動いているのかという点でもとても興味があったので制作物として作ることを決めました。


## 開発言語
html / css / ruby / Rails / JavaScript / jQuery / mysql 

## ER図

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|

#### Association
- has_one :brave, dependent: :destroy 

### bravesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null: false, foreign_key: true|
|name|string|null: false|
|level|string|null: false|
|exp|bigint|null: false|
|max_hp|integer|null: false|
|offense|integer|null: false|
|defense|integer|null: false|

#### Association
- belongs_to :user

### monstersテーブル
|Column|Type|Options|
|------|----|-------|
|name|name|null: false|
|image|string|null: false|
|bg_image|bg_image|null: false|
|recommended_level|integer|null: false|
|max_hp|integer|null: false|
|offense|integer|null: false|
|defense|integer|null: false|
|exp|integer|null: false|

### exp_tablesテーブル
|Column|Type|Options|
|------|----|-------|
|level|integer|null: false|
|exp|bigint|null: false|


## 実装機能
- ユーザーログイン、ログアウト、編集。
- CSVデータのインポート（モンスターデータ）。
- JavaScriptによる戦闘の非同期通信。
- 戦闘におけるダメージ計算、HPの変動。
- レベルアップによるステータス（HP,レベル,攻撃力等）の変動。
- ダメージモーション。
- 各コマンドごとのアクション変化。
  - attack : 通常ダメージ。
  - skill  : attackではダメージの与えられない敵がいる。
             その敵に対してのみ、大ダメージを与えられる。
  - spell  : 10秒以内に3つのうちのどれかの呪文を唱える。
             各呪文により与えられるダメージが違う。
             何も入力しなければダメージは0になる。
  - escape : 逃げる。戦闘を終了し新たなモンスターの出現。

## 画像&動画

- 新規登録画面  
<img width="500" height= "250" alt="新規登録" src="https://user-images.githubusercontent.com/61145164/77872302-9424aa80-7281-11ea-9fe5-5131943411f6.png">

- TOP画面
<img width="500" height= "250" alt="top画面" src="https://user-images.githubusercontent.com/61145164/77872525-22009580-7282-11ea-9767-60b9e85657d0.png">

- 編集＆ログアウト画面
<img width="250" height= "400" alt="編集" src="https://user-images.githubusercontent.com/61145164/77873217-4f4e4300-7284-11ea-8b2f-eba360df6491.png">

- 戦闘モーダル
<img width="250" height= "400" alt="戦闘モーダル" src="https://user-images.githubusercontent.com/61145164/77872557-3e043700-7282-11ea-8a4d-bab7c0f58ff9.png">


- Attack & Escape コマンド(10秒程度)  
<img width="250" height= "400" alt="編集" src="https://user-images.githubusercontent.com/61145164/78005367-6e2d0200-7376-11ea-906d-2e74b218c219.gif">

- skill コマンド(10秒程度) 
<img width="250" height= "400" alt="編集" src="https://user-images.githubusercontent.com/61145164/78005315-5a819b80-7376-11ea-9a4b-ab74233fd1ed.gif">

- spellコマンド(10秒程度)  
<img width="250" height= "400" alt="編集" src="https://user-images.githubusercontent.com/61145164/78003870-4a68bc80-7374-11ea-9602-bd2d56b040e4.gif">









