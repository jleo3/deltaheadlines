class CreateHashlios < ActiveRecord::Migration
  def change
    create_table :hashlios do |t|
      t.string :ticker
      t.string :company

      t.timestamps
    end
  end
end
