$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'psych'
require 'jekyll'

module JekyllStyleGuide
  autoload :Site,  'jekyll_style_guide/site'
  autoload :Check, 'jekyll_style_guide/check'
end
