class PostsController < ApplicationController  #PostsControllerクラスを定義。ApplicationControllerを継承してるから、共通の処理を引き継げる。

  def index             #indexアクションを定義
    @posts = Post.all   #Postモデルの全レコードをデータベースから取得して、インスタンス変数@postsに代入してる。ビューで使うため。
  end
  
  def new               #newアクションの定義。新規投稿用のフォームを表示するためのアクション。ビューがあれば表示される。
  end

  def create
    Post.create(content: params[:content])  #	Postモデル（DBのテーブルに対応）に、新しいコードを作成（保存）。
                                            #（続き）リクエストで送られてきたパラメータ（params）の中の :content を取り出して、それを content カラムに保存しています。
    redirect_to "/posts"                    #保存したあと、一覧画面を表示するための/postsに移動する
  end
end
