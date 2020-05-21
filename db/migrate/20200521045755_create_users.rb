class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :team
      t.string :city
      t.string :love_datadog
      t.string :weekend
      t.string :top_skills
      t.string :gender
      t.string :pronouns

      t.timestamps
    end
  end
end
