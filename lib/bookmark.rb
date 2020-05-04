class Bookmark

  attr_reader :list

  def initialize
    @list = ["https://google.com", "https://bing.com"]
  end

  def all
    @list.map! do |item|
      "#{item}"
    end
    @list.join("\n")
  end
end
