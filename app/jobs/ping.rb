class Ping < Jobly::Job
  def execute
    logger.info "PONG"
  end
end
