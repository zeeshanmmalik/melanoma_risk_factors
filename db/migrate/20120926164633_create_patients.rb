class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :mrn

      t.timestamps
    end
  end
end
