require 'related_word/service/semantic_service'

class RelatedWord
  class Service
    class << self
      def instance
        instance_class.new
      end

      private

      def instance_class
        "Service::#{class_name}".constantize
      end

      def class_name
        "#{service_name}Service"
      end

      def service_name
        Configure.service.split('_').map(&:capitalize).join
      end
    end
  end
end
