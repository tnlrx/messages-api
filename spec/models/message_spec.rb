RSpec.describe Message, type: :model do
    it{ should belong_to(:discussion) }
  
    it{ should validate_presence_of(:author, :recipient) }
  end