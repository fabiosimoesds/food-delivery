class BaseRepository
  def initialize(csv_file_path, klass)
    @csv_file_path = csv_file_path
    @elements = []
    @klass = klass
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @elements
  end

  def create(new_element)
    @elements.empty? ? new_element.id = 1 : new_element.id = @elements.last.id.to_i + 1
    @elements << new_element
    save
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      unless row.empty?
        @klass.prepare_row(row)
        @elements << @klass.new(row)
      end
    end
  end

  def save
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << @klass.prepare_headers

      @elements.each do |element|
        csv << element.to_csv
      end
    end
  end
end
