class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :campaign_id

      t.timestamps
    end
  end
end
