## users テーブル

| Column               | Type   | Options                       |
| -------------------- | ------ | ----------------------------- |
| name                 | string | null: false                   |
| email                | string | null: false                   |
| encrypted_password   | string | null: false                   |

### Association
has_many :items
has_many :likes

## itemsテーブル

| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| name         | string  | null: false                    |
| price        | integer | null: false                    |
| condition_id | integer | null: false                    |
| user         | integer | null: false, foreign_key: true |

## Association
belongs_to :user
has_many: likes

## likesテーブル

| Column | Type   | Options                        |
| ------ | ------ | ------------------------------ |
| item   | string | null: false, foreign_key: true |
| user   | string | null: false, foreign_key: true |

## Association
belongs_to :user
belongs_to :item


## アプリケーション名 
ASSESSMENT

## アプリケーション概要 
このアプリケーションは、ユーザー登録をしたのち自社で出品した商品(画像、商品名、値段、状態)を登録することができます。登録した商品は商品名、状態を検索することで登録した商品情報を取得することができます。登録されている状態によって商品の外枠の色が変わります(未開封：赤、 開封：緑, 箱なし： 青, ジャンク: 灰色)。ホーム画面から商品を保存することができます。保存するを押すと保存済みという文字に変更され保存一覧から保存した商品一覧を見ることができます。登録されている商品をクリックすることでその商品の詳細画面へと遷移することができます。また、出品をした本人であれば編集・削除をすることができます。

## URL 
https://assessment-tnit.onrender.com

## 利用方法 
Email test@test, パスワード test12, 入力後商品登録ボタンから商品の登録をすることでホーム画面に登録した商品が表示されます。検索欄から登録した商品名の入力と状態を選択することで商品を持ってくることができます。保存するを押すと右上にある保存一覧から保存した商品の一覧を見ることができます。商品をクリックすることで詳細画面へと遷移します。登録した本人であれば編集、削除ボタンが表示されます。

## アプリケーションを作成した背景 
私は現在買取の査定員をしています。その際に、自社が出品した商品が簡単に見られるようなアプリケーションが作られればより良い査定ができるのではと思いこのアプリケーションを作成しました。

## 画面遷移図 
https://gyazo.com/b7445bc7778bd9e21fcdf043b0268f90

## 開発環境
ruby javascript

・ローカルでの動作方法
## 工夫したポイント
状態によって商品の外枠の色が変わるように工夫をしました。これにより一目でその商品がどのような状態なのかが分かるようになりました。