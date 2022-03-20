class DocumentValidator
  def self.call(texto)
    {
      status: isblank(texto) ? 400 : 200,
      result_sequence: reslt_sequence(texto)
    }
  end

  def self.reslt_sequence(texto)
    return 'Params invalid' if isblank(texto)

    texto.chars.chunk(&:itself).map { |_, c| c.join }.sort_by(&:size).reverse.first
  end

  def self.isblank(texto)
    texto.blank? ? true : false
  end
end
