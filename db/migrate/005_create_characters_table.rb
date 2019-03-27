class CreateCharactersTable < ActiveRecord::Migration[5.1]
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    create_table :characters do |t| #we get a block variable here for the table
      # t.belongs_to :show
      # t.belongs_to :actor
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      #Write a migration for the characters table. 
      #A character should have a name and a show_id––a character will belong to a show.
      t.string :name
      # the above breaks down to
      # "create a column called :call_letters on table t with type string
      t.integer :show_id
      t.integer :actor_id
    end
  end
end
