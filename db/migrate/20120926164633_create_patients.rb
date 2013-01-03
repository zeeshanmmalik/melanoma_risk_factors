class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients, {:primary_key => :patient_id} do |t|
      t.string :mrn

      t.timestamps
    end
  end
end
