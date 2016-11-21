class AddSubIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :sub, foreign_key: true
  end
end
