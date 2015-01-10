class CreateDivDistThana < ActiveRecord::Migration
  require 'csv'

  def self.up
    puts "Creating Division......"
    CSV.foreach(Rails.root.join("divdisthana.csv"), headers: true) do |row|
      Division.create!(name: row[0]) if Division.where(name: row[0]).size == 0
    end

    puts "Creating District......"
    CSV.foreach(Rails.root.join("divdisthana.csv"), headers: true) do |row|
      division = Division.where(name: row[0]).first
      District.create!(name: row[1], division_id: division.id) if District.where(name: row[1]).size == 0
    end

    puts "Creating Thana......"
    CSV.foreach(Rails.root.join("divdisthana.csv"), headers: true) do |row|
      district = District.where(name: row[1]).first
      Thana.create!(name: row[2], district_id: district.id) if Thana.where(name: row[2]).size == 0
    end
  end
end
