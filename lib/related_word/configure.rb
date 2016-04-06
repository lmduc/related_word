class RelatedWord
  def self.config
    yield(Configure) if block_given?
  end

  class Configure
    # The default service used for find related words
    @service = :semantic

    # The default timeout of each request to the service
    @timeout = 2000

    class << self
      attr_accessor :service, :timeout
    end
  end
end
