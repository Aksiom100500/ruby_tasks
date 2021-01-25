class Array
  def rebuild
    rebuild = proc { |arr| arr.map { |el| el.is_a?(Array) ? rebuild.call(el) : yield(el, arr.size) } }
    rebuild.call(self)
  end

  def rebuild!(&block)
    replace(rebuild(&block))
  end
end
