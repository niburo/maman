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
 has_many   :  
 has_many   :  purchase


### addresses テーブル

| Column         | Type          | Options           |
| -------------- | ------------- | ----------------- |
| postal_code    | string        | null: false       |
| prefecture_id  | integer       | null: false       |
| municipality   | string        | null: false       |
| house_number   | string        | null: false       |
| building_name  | string        |                   |
| phone_number   | string        | null: false       |
| purchase       | references    | foreign_key: true |

### Association
 belongs_to : purchase



### items テーブル

| Column                   | Type          | Options         |
| ------------------------ | ------------- | --------------  |
| user                     | references    | foreign_key:true|
| name                     | string        | null: false     |
| info                     | text          | null: false     |
| category_id              | integer       | null: false     |
| sales_status_id          | integer       | null: false     |
| shipping_fee_status_id   | integer       | null: false     |
| prefecture_id            | integer       | null: false     |
| price                    | integer       | null: false     |
| scheduled_delivery_id    | integer       | null: false     |

### Association
 belongs_to :  user
 has_one    :  purchase



### purchases テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| user      | references | foreign_key: true |
| item      | references | foreign_key: true |



### Association
 belongs_to :  item
 has_one    :  address
 belongs_to :  user



## comments テーブル

| Column    | Type       | Options    |
| --------- | ---------- | ---------- |
| text      | text       | not:  null |
| user      | references |            |
| image     | references |            |

## profiles テーブル
|      Column        |  Type  |   Options   |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| age                | integer |              |
| children           |         |              |
| info               | text    |              |


## ペルソナ
年齢：20歳〜40歳
性別：主に女性（男性も）育児してる人

開発アプリ
育児補佐アプリ(タイトル：ままん)
SOA
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
