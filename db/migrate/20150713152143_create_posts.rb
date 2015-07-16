class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :description
    	t.text :content
    	t.belongs_to :accounts, index: true


      t.timestamps null: false
    end
  end
end
