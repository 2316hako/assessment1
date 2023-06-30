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