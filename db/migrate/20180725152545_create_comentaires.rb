class CreateComentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :comentaires do |t|
	  t.string :name
      t.timestamps
    end
  end
end
