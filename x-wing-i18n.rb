def translate(translate_this)
  @translations ||= YAML.load_file('x-wing-translations.yml')
  keys = translate_this.split('.')
  value = @translations
  keys.each do |key|
    value = value[key]
  end
  raise if value.nil?
  value
rescue
  translate_this
end
