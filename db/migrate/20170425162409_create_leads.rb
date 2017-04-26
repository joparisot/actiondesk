class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :phone_number
      t.string :email
      t.string :company
      t.text :comment

      t.timestamps
    end
  end
end
