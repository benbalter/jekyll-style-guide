module JekyllStyleGuide
  module Checks
    class BaseurlCheck < Check
      def match?
        site.unparsed_config.match(/\A\w+:\s?\[/)
      end

      def documentation_path
        'config/#arrays'
      end

      def message
        'Prefer multi-line arrays for readablility and version control purposes'
      end
    end
  end
end
