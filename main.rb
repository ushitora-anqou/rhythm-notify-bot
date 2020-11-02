require "discordrb"
require "byebug"

# client id: https://discordapp.com/oauth2/authorize?client_id=772824132161110016&scope=bot&permissions=0
bot = Discordrb::Bot.new token: ENV["DISCORD_TOKEN"]

bot.message do |event|
  if event.message.content.strip[0] == "!" || event.user.bot_account?
    next
  end
  if event.channel.name == "rhythm"
    event.respond "NOTICE: You're in #rhythm channel."
  end
end

bot.run
