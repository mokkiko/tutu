class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
