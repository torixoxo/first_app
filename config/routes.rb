Rails.application.routes.draw do  #Railsアプリケーションのルーティングを定義するブロックの開始。routes.draw の中に、URLとコントローラーアクションの対応関係を記述していきます。
 
  # HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'
  get 'posts', to: 'posts#index'   #GET /posts にアクセスされたときに、PostsController の index アクションを実行するよう設定。ブラウザで http://localhost:3000/posts にアクセスすると一覧ページが表示されるようなイメージ。
  get 'posts/new', to: 'posts#new' #GET /posts/new にアクセスされたときに、PostsController の new アクションを実行。新しい投稿を作成するフォームを表示するページ（「新規作成」画面など）。
  post 'posts', to: 'posts#create' #GET /posts にアクセスされたときに、PostsController の createアクションを実行（投稿を保存してレコード作成）
end