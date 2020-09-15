require 'rails_helper'

RSpec.describe Item, type: :model do
  # ensure an item record belongs to a single to do record
  it { should belong_to(:todo) }
  # ensure column name iss present before saving
  it { should validate_presence_of(:name) }
end
