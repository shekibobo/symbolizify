require "symbolizify/version"
require "active_support/inflector"

module ActiveSupport::Inflector
  def symbolizify(s)
    s.titleize.parameterize('_') << s.strip[-1].match(/[!?]/).to_s
  end
end

class String
  def symbolizify
    ActiveSupport::Inflector.symbolizify(self)
  end
end
