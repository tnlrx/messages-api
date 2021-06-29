class Message < ApplicationRecord
before_create :confidentialiser
    belongs_to :discussion, dependent: :destroy
    accepts_nested_attributes_for :discussion

    validates :author, :recipient, presence: true

    private
    def confidentialiser
        # caviarder email
        self.text = self.text.gsub(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i, "confidentiel")

        # caviarder n° de téléphone français
        self.text = self.text.gsub(/(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}/, "confidentiel")
    end
end
