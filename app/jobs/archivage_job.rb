class ArchivageJob < ApplicationJob
  include MessagesHelper
  queue_as :default

  def perform(*args)
    archive_messages
  end
end
