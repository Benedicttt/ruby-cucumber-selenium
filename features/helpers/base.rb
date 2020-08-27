def color(text, color_text)
  ColorizedString[text].colorize(color_text.to_sym)
end

def load_and_symbolyze_file(file_name)
  read ||= YAML.load_file(file_name)
  JSON.parse(JSON.dump(read), symbolize_names: true)

end

def format_number(some_number)
  (some_number.to_i == some_number) ? some_number.to_i : some_number
end

def exception_for_request(response, path, orid)
  raise "\n#{color('Link: ', 'light_blue')} #{color("#{base_host + path}", 'green')}
        \nOrganization: #{color(orid, 'red')}
        \n#{color("Body response:","light_blue")} #{color(response.body,  'green')}\n\n" if response.code != 200
end