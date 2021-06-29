require "test_helper"

class MessageTest < ActiveSupport::TestCase
  
  test "confidentialiser" do
    
    messages  = Message.create(
      [
        {
          author: 'money.penny@mi6.com', 
          recipient: 'james.blond@mi6.com', 
          text: 'Bonjour James, voiçi l\'email de M : m@mi6.com'
        },
      
        {
          author: 'mmoney.penny@i6.com', 
          recipient: 'james.blond@mi6.com', 
          text: 'Bonjour James, voiçi le n° de téléphone de M : +33676204201'
        }
      ])

      discussion = Discussion.create(messages: messages)
    
      assert discussion.save
      assert discussion.messages
      assert_match 'confidentiel', discussion.messages[0].text
      assert_match 'confidentiel', discussion.messages[1].text
  end
  
  test "validates" do
    assert_not Message.create(author: nil, recipient: nil).valid?
  end
  
end
