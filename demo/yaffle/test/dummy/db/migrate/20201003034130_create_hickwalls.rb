class CreateHickwalls < ActiveRecord::Migration[6.0]
  def change
    create_table :hickwalls do |t|
      t.string :last_squawk

      t.timestamps
    end
  end
end
