class AddNewspaperRefToAd < ActiveRecord::Migration[5.0]
  def change
    add_reference :ads, :newspaper, foreign_key: true
  end
end
