class MigracionDeCambios < ActiveRecord::Migration
  def change
 
  create_table :events_places, id: false do |t|
      t.integer :event_id
      t.integer :place_id
    end

    create_table :places_categories, id: false do |t|
      t.integer :place_id
      t.integer :categories_id
     end


  
     add_column :events, :website, :string
     add_column :events, :city, :string
     add_column :events, :whybuy, :string
     add_column :events, :moreinfo, :string
     add_column :places, :city, :string
     add_column :places, :website, :string
     add_column :places, :openhour, :string


  end
end
