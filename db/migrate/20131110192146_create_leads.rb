class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
