# DISACODEホームページサンプル

https://disacode-official.herokuapp.com/

本ページにはBASIC認証がかかっています。
username == admin
password == 1234

Rubyを勉強した内容を踏まえ、自身が加入しているバンドのホームページを作成しています。

## TOP
 - バンド画像、イベント情報を記載しています。
  - 画像はslickを用いて画面が切り替わるようにしています。
## Profile
 - メンバーの情報を記載しています。
  - slickを用いて画像が切り替わるようにしています。
## Music
 - リリースしている曲の情報を掲載しています。
## Info
 - イベント情報を記載しています。
## Picture
 - メンバーの画像をDBへ保存の上、表示するようにしています。
## Video
 - Youtube API を用いて動画を埋め込み表示しています。
## Contact
 - コメントを保存することができます。
## rails_admin
 - rails_adminを用いて管理ページを導入しています。
 - メンバー画像、イベントスケジュール、コメントを保存・管理しています。

# 使用技術一覧
- Ruby 2.5.1
- Ruby on Rails 5.2.4
- MySQL 5.6.43
- Haml 5.1.2
- jQuery 3.4.1
- Github

<!-- ## DB設計
## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|unique: false|
|email|string|unique: false|
|encrypted_password|string|unique: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birthday|date|null: false|
|phone_num|integer|null: false|
|authentication_code|string|null: false|
|profile_text|string|
### Association
- has_many :sns_credentials
- has_many :products
- has_one :address, dependent: :destroy
- has_many :payments
