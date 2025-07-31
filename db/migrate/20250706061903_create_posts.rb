class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|    #実際にpostsテーブルを作成する
      t.text :content             # t.に続くのがカラムの型、その右側にシンボルで記載されるものがカラム名
      t.timestamps                #デフォルトで記載されているが型の名称ではなく、Railsが独自に用意しているもの
    end
  end
end
