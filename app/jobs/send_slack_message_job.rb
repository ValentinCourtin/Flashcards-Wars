class SendSlackMessageJob < ApplicationJob
  queue_as :default

  def perform(target, item, user)
    # Do something later
p user
p item

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#flashcards",
           username: "Game Master"
end

notifier.ping "#{user.first_name} #{target.first_name} #{item.name} #{item.description}"

# "🎮 Nouveau Gage !
# [#{user.first_name}] a envoyé le gage '[Nom du jeu]' à [#{target.first_name}] .
# 💡 #{item.description}"

  end
end
