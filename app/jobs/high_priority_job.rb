class HighPriorityJob < ApplicationJob
  queue_as :high_priority

  def perform(*args)
    Sidekiq::Logging.logger.info "優先度の高いジョブを実行しました"
  end
end
