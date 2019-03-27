class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |element|
      element.string :first_name
      element.string :last_name
    end
  end
end
