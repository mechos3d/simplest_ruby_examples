# Просто добавляем здесь в конец body, возвращенног приложением MyApp -
# свою строку и прокидываем результат дальше - к пользователю

# А также замеряем время респонса и выводим в STDOUT
class MyRackMiddleware
  def initialize(appl)
    @appl = appl
  end
  def call(env)
    start = Time.now
    status, headers, body = @appl.call(env)
    stop = Time.now

    append_s = "... greetings from MyRackMiddleware!!"
    new_body = ""
    body.each { |string| new_body << " " << string }
    new_body << " " << append_s

    puts "Response Time: #{stop-start}" # display on console

    [status, headers, [new_body]]
  end
end
