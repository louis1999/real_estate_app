class AddMotDePasseToUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    add_column :utilisateurs, :mdp, :string
  end
end
