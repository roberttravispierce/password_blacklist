module PasswordBlacklist
  class Checker
    def initialize
      file_path = File.expand_path('../../../data/Top304Thousand-probable-v2.txt', __FILE__)

      @data = File.read(file_path)
    end

    def blacklisted?(password)
      !!@data.match(Regexp.escape(password.downcase))
    end

    def inspect
      "#<#{self.class}:0x#{__id__.to_s(16)}>"
    end
  end
end
