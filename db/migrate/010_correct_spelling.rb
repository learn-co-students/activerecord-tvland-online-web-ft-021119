class CorrectSpelling < ActiveRecord::Migration[4.2]

def change
   remove_column :shows, :seaon, :string
   add_column :shows, :season, :string
 end
end
