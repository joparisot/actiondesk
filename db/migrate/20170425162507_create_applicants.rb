class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.text :motivation
      t.string :linkedin_url
      t.string :github_url

      t.timestamps
    end
  end
end
