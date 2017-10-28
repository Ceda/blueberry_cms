require 'blueberry_cms/engine'
require 'blueberry_cms/liquid_tags/page_link'

module BlueberryCMS
  mattr_accessor :page_admin_controller, :custom_blocks

  @@parent_controller = 'ApplicationController'
  @@custom_blocks     = []

  def self.multi_lang?
    I18n.available_locales.count > 1
  end

  def self.config
    yield self
  end
end
