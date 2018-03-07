class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :description
      t.references :professor, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
