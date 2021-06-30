class ArchivageJob < ApplicationJob
  include MessagesHelpers
  queue_as :default

  def perform(*args)
    archive_messages
  end
end
