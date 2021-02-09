class CreateFlags < ActiveRecord::Migration[6.0]
  def change
    create_table :flags do |t|
      t.string :title
      t.text :note
      t.string :status

      t.timestamps
    end
  end
end
