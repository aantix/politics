module Selectable
  module ClassMethods
    def select_items
      self.all_sorted.collect{|c| [c.name,c.id]}
    end
  end

  def self.included(base)
    base.scope :all_sorted, :order => [:id]
    base.extend(ClassMethods)
  end
end