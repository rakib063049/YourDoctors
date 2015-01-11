class PopulateCity < ActiveRecord::Migration
  require 'csv'
  def change
    puts "Creating Division......"
    CSV.foreach(Rails.root.join("divdisthana.csv"), headers: true) do |row|
      Division.create!(name: row[0]) if Division.where(name: row[0]).size == 0
    end

    puts "Creating City......"
    CSV.foreach(Rails.root.join("divdisthana.csv"), headers: true) do |row|
      division = Division.where(name: row[0]).first
      City.create!(name: row[1], division_id: division.id) if City.where(name: row[1]).size == 0
    end
  end
end
