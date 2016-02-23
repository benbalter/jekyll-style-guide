module JekyllStyleGuide
  module Checks
    class ArrayCheck < Check
      def match?
        site.raw_config.key?('baseurl') && site.raw_config['baseurl'] == '/'
      end

      def documentation_path
        'config/#baseurl'
      end

      def message
        "The site’s base URL is only to be used when the resulting site lives" \
        'at a subpath of the domain.'
      end
    end
  end
end
