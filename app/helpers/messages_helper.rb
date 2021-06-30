module MessagesHelper
    def archive_messages
        diff = 3.month.from_now
        Message.where('created_at<?', diff).update_all(isarchived: true)
    end
end