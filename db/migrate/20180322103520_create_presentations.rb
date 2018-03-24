class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :name
      t.text :body
      t.date :upload_on

      t.timestamps
    end
  end
end
