class CreateComentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :comentaires do |t|
	  t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      t.string :content
      t.timestamps
    end
  end
end
