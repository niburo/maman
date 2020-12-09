# README


### users テーブル

|      Column        |  Type  |   Options   |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |


### Association
  has_many :items
  has_many :messages
  has_many :room_users
  has_many :rooms, through: :room_users



## profiles テーブル
|      Column        |  Type  |   Options   |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| age                | integer |              |
| children           |         |              |
| info               | text    |              |


### Association


## room users テーブル
|      Column        |  Type      |   Options   |
| ------------------ | ---------- | ----------- |
| room               | references | key: true   |
| user               | references |             |


### Association
  belongs_to :room
  belongs_to :user


## messages テーブル
|      Column        |  Type      |   Options   |
| ------------------ | ---------- | ----------- |
| room               | references | key: true   |
| user               | references |             |
| content            | string     |             |


### Association
  belongs_to :room
  belongs_to :user
  has_one_attached :image


## rooms テーブル
|      Column        |  Type      |   Options   |
| ------------------ | ---------- | ----------- |
| name               | string     | null: false |


### Association
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy





## ペルソナ
年齢：20歳〜40歳
性別：主に女性（男性も）育児してる人

開発アプリ
育児補佐アプリ(タイトル：ままん)

ビジネスモデル   広告料：宣伝：売り買い

自分の経験からこのようなアプリがつくりたいと思いました
育児で聞きたい状況でも聞けない事が多く
聞けるとしても会社の同僚や子供がいない女性が多かった
妻にもママ友がいなくいつも助産師からアドバイスをもらっていた
初めての子育てで何もわからなく妻も不安が大きかった
ブログなどをみても、あまり良いコメントや記事はなく
病院へ行っても様子をみてという返答が多く(精神的にも不安が大きくなりました)
おすすめのおもちゃや絵本、月齢ごとの遊び方など数々のサイトをみたがそれも手間がかかり
実際使ってみた感想など意見や情報がリアルタイムでほしかった



問題
# What
育児で悩んでる時、意見をのべる場所を作る
# Why
病院やブログなどのサイトを見ると手間がかかる
病院などは、様子見と言われて問題解決にはいたらない事が多い
# 機能
comment機能：tweet機能
