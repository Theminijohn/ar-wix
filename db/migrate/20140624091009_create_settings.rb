class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings, id: false do |t|
      # Change Primary Key
      t.primary_key :key

      # Settings Variables
      t.text :value, null: ''

      t.timestamps
    end
  end
end
