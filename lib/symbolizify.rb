require "symbolizify/version"
require "active_support/inflector"

module ActiveSupport::Inflector
  def symbolizify(s)
    s.titleize.parameterize('_') << s.strip[-1].match(/[!?]/).to_s
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
