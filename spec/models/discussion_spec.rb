RSpec.describe Discussion, type: :model do
    it{ should have_many(:messages).dependent(:destroy) }
  
end