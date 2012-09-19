require "symbolizify/version"
require "active_support/inflector"

module ActiveSupport::Inflector
  def symbolizify(s)
    parameterize(titleize(s), '_')
  end
end

class String
  def symbolizify
    dup.symbolizify!
  end

  def symbolizify!
    self.replace ActiveSupport::Inflector.symbolizify(self)
  end
end
