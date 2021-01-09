class CreateUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateurs do |t|
      t.string :email
      t.string :firstname
      t.string :name

      t.timestamps
    end
  end
end
