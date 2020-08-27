require 'selenium-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'dry/schema'
require 'dry/validation'
require 'colorize'
require 'colorized_string'

def require_files(file_paths)
  array = file_paths.gsub(/\s+/, '').split(';')
  array.each { |path| Dir[path].each(&method(:require)) }
end

paths = %(
          ./features/helpers/**/*.rb;
          ./features/page_object/*.rb;
          ./features/support/screenshot;
          ./features/support/driver_setting;
        )

require_files(paths)

World PageObject::PageFactory
Watir.default_timeout = 5
