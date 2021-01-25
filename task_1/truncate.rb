module Truncate
  def truncate(name, length: 300)
    define_method(name) do
      string = instance_variable_get("@#{name}")
      string.length > length ? "#{string[0...length]}..." : string
    end
  end
end
