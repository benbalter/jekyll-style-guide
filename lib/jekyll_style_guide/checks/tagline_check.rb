module JekyllStyleGuide
  module Checks
    class TaglineCheck < Check
      def match?
        site.raw_config.key? 'tagline'
      end

      def documentation_path
        'config/#variables'
      end

      def message
        'Use `description` and not `tagline` to match document and page meta'
      end
    end
  end
end
