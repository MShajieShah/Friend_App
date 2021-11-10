class CreateSubPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_posts do |t|
      t.text :content
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
