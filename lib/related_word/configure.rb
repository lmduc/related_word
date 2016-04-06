class RelatedWord
  def self.config
    yield(Configure) if block_given?
  end

  class Configure
    # The service used for find related words
    @@service = :semantic

    # The timeout of each request to the service
    @@timeout = 2000
  end
end
