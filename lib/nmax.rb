require "nmax/version"

module Nmax
  def self.result(arg, stream = $stdin)
    integers = stream.gets.scrub!.scan(/\d+/).map { |e| e.to_i }
    integers.max(arg.to_i).each { |int| p int }
  end
end
