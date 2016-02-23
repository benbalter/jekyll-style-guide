module JekyllStyleGuide
  module Checks
    class NameCheck < Check
      def match?
        site.raw_config.key? 'name'
      end

      def documentation_path
        'config/#variables'
      end

      def message
        'Use `title` and not `name` to match document and page meta'
      end
    end
  end
end
