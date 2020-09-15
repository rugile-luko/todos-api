require 'rails_helper'

RSpec.describe Todo, type: :model do
  # ensure To Do model has a 1:m (one-to-many) relationship with Item model
  it { should have_many(:items).dependent(:destroy) }
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }

end
