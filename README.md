**Cursor(Claude)で指示だけで作らせたアプリケーション。**  
**ここの文章以外は全て自動生成**

---

# TODOアプリケーション

シンプルで使いやすいTODOアプリケーションです。タスクの作成、編集、削除が簡単に行えます。

## 機能

- TODOの作成、編集、削除
- ステータス管理（未着手、進行中、完了）
- レスポンシブデザイン
- モダンなUI/UX

## 必要要件

- Ruby 3.0.0以上
- Rails 8.0.2以上
- PostgreSQL 9.3以上

## セットアップ

1. リポジトリのクローン
```bash
git clone [リポジトリURL]
cd todo_app
```

2. 依存関係のインストール
```bash
bundle install
```

3. データベースのセットアップ
```bash
# PostgreSQLが起動していることを確認してから実行してください
rails db:create
rails db:migrate
```

## 起動方法

1. PostgreSQLが起動していることを確認

2. Railsサーバーの起動
```bash
rails server
```

3. ブラウザでアクセス
```
http://localhost:3000
```

## 注意点

- PostgreSQLをデータベースとして使用しています
- 初回起動時にデータベースのマイグレーションを必ず実行してください
- ステータスは「未着手」「進行中」「完了」の3種類があります
- 説明文は改行を含めることができます

## 技術スタック

- Ruby on Rails
- PostgreSQL
- Bootstrap 5
- Turbo
- Stimulus

## ライセンス

MITライセンス
