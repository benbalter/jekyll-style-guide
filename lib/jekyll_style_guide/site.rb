module JekyllStyleGuide
  class Site
    attr_reader :path

    def initialize(path = nil)
      path ||= Dir.pwd
      @path = path
    end

    def raw_config
      return @config if defined? @config
      @config = begin
        return unless unparsed_config
        Psych.safe_load(unparsed_config, [Symbol], [:compressed])
      end
    end

    def unparsed_config
      @unparsed_config ||= File.read(config_path) if File.exist?(config_path)
    end

    def config
      Jekyll.configuration('source' => path,
                           'quiet'  => true)
    end

    def pages
      jekyll_site.pages
    end

    def posts
      jekyll_site.posts.docs
    end

    def static_files
      jekyll_site.static_files
    end

    def checks
      @checks ||= Check.all.map { |c| c.new(self) }
    end

    def valid?
      matched_checks.empty?
    end

    def matched_checks
      checks.select(&:match?)
    end

    private

    def config_path
      File.expand_path '_config.yml', path
    end

    def jekyll_site
      @jekyll_site ||= begin
        site = Jekyll::Site.new(config)
        site.read
        site
      end
    end
  end
end
