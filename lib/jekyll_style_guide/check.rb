module JekyllStyleGuide
  class Check
    attr_reader :site

    def initialize(site)
      @site = site
    end

    def documentation_path
      raise 'Not implemented'
    end

    def match?
      raise 'Not implemented'
    end

    def message
      raise 'Not implemented'
    end
    alias to_s message

    class << self
      def inherited(base)
        subclasses << base
      end

      def subclasses
        @subclasses ||= []
      end
      alias all subclasses

      def files
        Dir[File.expand_path('../checks/*_check.rb', __FILE__)]
      end
    end
  end
end

JekyllStyleGuide::Check.files.each do |file|
  require file
end
