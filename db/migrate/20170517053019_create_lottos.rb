class CreateLottos < ActiveRecord::Migration
  def change
    create_table :lottos do |t|
        t.string :lotto_num
        
      t.timestamps null: false
    end
  end
end
