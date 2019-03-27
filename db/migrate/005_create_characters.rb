class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |element|
      element.string :name
      element.integer :show_id
    end
  end
end
