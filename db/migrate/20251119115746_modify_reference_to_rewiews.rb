class ModifyReferenceToRewiews < ActiveRecord::Migration[7.1]
  def change
    remove_reference :reviews, :restaurants, foreign_key: true
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
