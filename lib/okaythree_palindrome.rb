require "okaythree_palindrome/version"

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns letters of a string
  def letters
    # self.scan(/\w+/).join
  end

  private
    def processed_content
      self.to_s.downcase
    end

end
