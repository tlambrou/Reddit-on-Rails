class CreateSubs < ActiveRecord::Migration[5.0]
  def change
    create_table :subs do |t|
      t.string :name
      t.references :posts
      t.timestamps
    end
  end
end
