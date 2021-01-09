class CreateKots < ActiveRecord::Migration[6.1]
  def change
    create_table :kots do |t|
      t.string :adresse
      t.text :description

      t.timestamps
    end
  end
end
