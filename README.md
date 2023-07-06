## users テーブル

| Column               | Type   | Options                       |
| -------------------- | ------ | ----------------------------- |
| name                 | string | null: false                   |
| email                | string | null: false                   |
| encrypted_password   | string | null: false                   |

### Association
has_many :items
has_many :item_additions

## itemsテーブル

| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| name         | string  | null: false                    |
| price        | integer | null: false                    |
| condition_id | integer | null: false                    |
| user         | integer | null: false, foreign_key: true |

## Association
belongs_to :user

## item_additionsテーブル

| Column             | Type    | Options                        |
| ------------------ | ------- | ------------------------------ |
| name               | string  | null: false                    |
| condition_id       | integer | null: false                    |
| market_price       | integer | null: false                    |
| quantity           | integer | null: false                    |
| presentation_price | integer | null: false                    |
| ratio              | integer | null: false                    |
| user               | integer | null: false, foreign_key: true |

## Association
belongs_to :user

## README
・アプリケーション名 ASSESSMENT
・アプリケーション概要 このアプリケーションは、ユーザー登録をしたのち自社で出品した商品(画像、商品名、値段、状態)を登録することができます。登録した商品は検索することで登録した商品情報を取得することができます。登録されている商品をクリックすることでその商品の詳細画面へと遷移することができます。また、出品をした本人であれば編集・削除をすることができます。ホーム画面から商品の追加をすることができ、状態、商品名、値段を入力して保存をすることができます。
・URL https://assessment-tnit.onrender.com
・利用方法 新規登録ボタンからemailとpasswordを入力をします。入力後商品登録ボタンから商品の登録をすることでホーム画面に登録した商品が表示されます。検索欄から登録した商品名を入力することで商品を持ってくることができます。商品をクリックすることで詳細画面へと遷移します。登録した本人であれば編集、削除ボタンが表示されます。
・アプリケーションを作成した背景 私は現在買取の査定員をしています。その際に、自社が出品した商品が簡単に見られるようなアプリケーションが作られればより良い査定ができるのではと思いこのアプリケーションを作成しました。
・洗い出した要件
・実装した機能についての画像やGIF及びその説明 
・実装予定の機能 商品追加ボタンを押すと状態、商品名、相場、比率を入力することができる。一覧から追加した商品の一覧がみられる。
・データベース設計
・画面遷移図 https://gyazo.com/e745136c43523dd53a2b52fa3f6e077f
・開発環境 ruby
・ローカルでの動作方法
・工夫したポイント