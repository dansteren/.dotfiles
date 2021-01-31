require 'irb/ext/save-history'

class String
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end
end

IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT][:MY_PROMPT] = { # name of prompt mode
  # :AUTO_INDENT => true,                       # enables auto-indent mode
  :PROMPT_I => "💎➜ ".blue,                     # normal prompt
  :PROMPT_S => "  ➜ ".blue,                     # prompt for continuing strings
  :PROMPT_C => "※ ➜ ".blue,                     # prompt for continuing statement
  :PROMPT_N => "λ ➜ ".blue,                     # prompt for continuing statement
  :RETURN => "#{' =>'.magenta} %s\n\n"          # format to return value
}

IRB.conf[:PROMPT_MODE] = :MY_PROMPT

# Copies the given input into the clipboard
def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  "Copied to clipboard"
end

alias clip pbcopy
