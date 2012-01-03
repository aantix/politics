require 'selectable'

class Category < ActiveRecord::Base
  include Selectable
end
