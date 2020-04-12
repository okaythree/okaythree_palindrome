require "okaythree_palindrome/version"

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  private
    def processed_content
      self.to_s.downcase.scan(/\w+/).join
    end

end
