class Array
  def rebuild!
    rebuild = proc { |arr| arr.map { |el| el.is_a?(Array) ? rebuild.call(el) : yield(el, arr.size) } }
    replace(rebuild.call(self))
  end
end
