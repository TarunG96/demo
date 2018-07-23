class AddColumnsTowidget < ActiveRecord::Migration[5.2]
  def change
    add_column :widgets, :date, :datetime
    add_column :widgets, :description, :text
    add_column :widgets ,:amount, :integer
  end
end
