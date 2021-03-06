class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :user, index: true
      t.belongs_to :categorie, index: true
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
