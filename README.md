## User テーブル

|  Column            |  Type               |  Options          |
| ------------------ | ------------------- | ----------------- |
| name               | string              | null: false       |
| email              | string              | null: false       |
| password           | string              | null: false       |

### Association
- has_many :rooms

## Room テーブル

|  Column            |  Type            |  Options            |
| ------------------ | ---------------- | ------------------- |
| name               | string           | null: false         |

## Association
- belongs_to :pet

## Pet

|  Column            |  Type            |  Options            |
| ------------------ | ---------------- | ------------------- |
| user               | references       | foreign_key: true   |
| profile            | references       | foreign_key: true   |
| care               | references       | foreign_key: true   |
| diary              | references       | foreign_key: true   |
| grow               | references       | foreign_key: true   |
| health_care        | references       | foreign_key: true   |

### Association
- belongs_to :user
- belongs_to :profile
- belongs_to :care
- belongs_to :diary
- belongs_to :grow
- belongs_to :health_care

## Profile テーブル
|  Column            |  Type               |  Options          |
| ------------------ | ------------------- | ----------------- |
| type               | string              | null: false       |
| sex                | string              | null: false       |
| color              | string              | null: false       |
| birthday           | date                | null: false       | 
| character          | text                |                   |
| memo               | text                |                   |

### Association
- belongs_to :room

## Care テーブル
|  Column            |  Type               |  Options          |
| ------------------ | ------------------- | ----------------- |
| walk_time          | string              |                   |
| trimming           | string              |                   |
| type_of_foods      | string              |                   |
| amount_of_food     | string              |                   |
| number_of_meals    | string              |                   |

### Association
- belongs_to :room

## Diary テーブル

|  Column            |  Type               |  Options                        |
| ------------------ | ------------------- | ------------------------------- |
| date               | date                | null: false                     |
| text               | text                | null: false                     |
| image              | references          | null: false, foreign_key: true  |

### Association
- belongs_to :room

## Grow テーブル

|  Column            |  Type               |  Options           |
| ------------------ | ------------------- | ------------------ |
| height             | string              | null: false        |
| weight             | string              | null: false        |

### Association
- belongs_to :room

## HealthCare テーブル

|  Column            |  Type               |  Options           |
| ------------------ | ------------------- | ------------------ |
| hospital           | string              | null: false        |
| medical_history    | text                | null: false        |
| medicine           | text                | null: false        |
| allergies          | text                | null: false        |

### Association
- belongs_to :room