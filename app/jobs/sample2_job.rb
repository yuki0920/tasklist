class Sample2Job < ApplicationJob
  queue_as :default

  def perform(*args)
    Sidekiq::Logging.logger.info "サンプルジョブ2を実行しました"
  end
end
