# README

## APP名
TECH QUEST

## 概要
ゲーム戦闘シーンの再現。

勇者（ユーザー）がランダムに出てくるモンスターと戦闘。  
お互いにダメージを与え合い、どちらかのHPが0になると戦闘終了。  
新たなモンスターが出現し、戦闘を繰り返します。  

## リンク
<https://arcane-temple-26627.herokuapp.com/>

## 開発の背景
せっかく作るなら何か面白いものをと思い。


## 開発言語
ruby / Rails / JavaScript / mysql 

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
- レベルアップによるステータス（HP,レベル,攻撃力等）の変動
- ダメージモーション
- 各コマンドごとのアクション変化(1分程度の動画有り）
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
<https://im3.ezgif.com/tmp/ezgif-3-3fa42a422260.gif>

- skill コマンド(10秒程度)  
<https://im3.ezgif.com/tmp/ezgif-3-bd2ec38c5b3a.gif>

- spellコマンド(10秒程度)  
<https://im3.ezgif.com/tmp/ezgif-3-cf83be1c87ff.gif>







