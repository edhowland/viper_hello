# viper_hello.rb - initialization for viper_hello Viper package
def hello string
  say "Hello, #{string}"
end

Viper::Session[:commands][:hello] = ->(b, *args) { hello args[0] }