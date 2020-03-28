# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# APP名
TECH QUEST

# 概要
ゲーム戦闘シーンの再現。

勇者（ユーザー）がランダムに出てくるモンスターと戦闘。
お互いにダメージを与え合い、どちらかのHPが0になると戦闘終了。
新たなモンスターが出現し、戦闘を繰り返します。

# 開発の背景
せっかく作るなら何か面白いものをと思い。


# 開発言語
ruby / Rails / JavaScript / mysql 

# ER図

## bravesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null: false, foreign_key: true|
|name|string|null: false|
|level|string|null: false|
|exp|bigint|null: false|
|max_hp|integer|null: false|
|offense|integer|null: false|
|defense|integer|null: false|

### Association
- belongs_to :user

## monstersテーブル
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

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_one :brave, dependent: :destroy 

## exp_tablesテーブル
|Column|Type|Options|
|------|----|-------|
|level|integer|null: false|
|exp|bigint|null: false|


# 実装機能
・ユーザーログイン、ログアウト、編集。
・CSVデータのインポート（モンスターデータ）。
・JavaScriptによる戦闘の非同期通信。
・戦闘におけるダメージ計算、HPの変動。
・レベルアップによるステータス（HP,レベル,攻撃力等）の変動
・ダメージモーション
・各コマンドごとのアクション変化(1分程度の動画有り）
  - attack : 通常ダメージ。
  - skill  : attackではダメージの与えられない敵がいる。
             その敵に対してのみ、大ダメージを与えられる。
  - spell  : 10秒以内に3つのうちのどれかの呪文を唱える。
             各呪文により与えられるダメージが違う。
             何も入力しなければダメージは0になる。
  - escape : 逃げる。戦闘を終了し新たなモンスターの出現。

# 画像&動画

sss







