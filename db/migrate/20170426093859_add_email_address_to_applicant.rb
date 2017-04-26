class AddEmailAddressToApplicant < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :email_address, :string
  end
end
