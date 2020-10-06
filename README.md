# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |

### Association

- has_many :lists
- has_many :tasks


## tasks テーブル

| Column         | Type       | Options ---------------------- |
| -------------- | ---------- | ------------------------------ |
| task           | string     | null: false                    |
| list           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :list

## lists テーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| name           | string  | null: false |

### Association
- belongs_to :user
- has_many :tasks