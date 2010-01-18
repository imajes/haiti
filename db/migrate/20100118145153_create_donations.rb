class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations, :force => true do |t|
      t.string :donor
      t.string :channel
      t.text :desc
      t.integer :committed
      t.integer :pledged
    end
    require 'fastercsv'

    FasterCSV.foreach(RAILS_ROOT + '/db/data.csv') do |row|
      Donation.create!(:donor => row[0], :channel => row[1], :desc => row[2], :committed => row[3].gsub(',','').to_i, :pledged => row[4].gsub(',','').to_i)
    end
    
  end

  def self.down
    drop_table :donations
  end
end
