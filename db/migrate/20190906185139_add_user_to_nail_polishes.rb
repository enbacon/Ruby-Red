class AddUserToNailPolishes < ActiveRecord::Migration[5.2]
  def change
    add_reference :nail_polishes, :user, foreign_key: true
  end
end
