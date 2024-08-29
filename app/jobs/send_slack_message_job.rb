class SendSlackMessageJob < ApplicationJob
  queue_as :default

  def perform(target, item, user)
    # Do something later

    # le slack mis sur heroku et env. => flashcardS
    notifier = Slack::Notifier.new ENV["SLACK_URL"], username: "Game Master"

    # le slack mis ici a ne pas mettre sur github => flashcard


    @username = " #{user.first_name.capitalize} #{user.last_name[0].upcase}."
    @target_username = " #{target.first_name.capitalize} #{target.last_name[0].upcase}."


    # notifier.ping "🎮 New item used ! 🎮
    # [#{@username}] used '#{item.name}' on [#{@target_username}] .
    # ➡️  #{item.description}"

    if item.category === "single"
      notifier.ping "🎮 New item used ! 🎮
    [#{@username}] used '#{item.name}' on [#{@target_username}] .
    ➡️  #{item.description} "
    elsif item.category === "group"
      notifier.ping "🎮 New item used ! 🎮
    [#{@username}] used '#{item.name}' on [everyone].
    ➡️  #{item.description} "
    end

  end
end


# notifier.ping "#{user.first_name} #{target.first_name} #{item.name} #{item.description}"


# notifier.ping "🎮 New item used ! 🎮
# [#{user.first_name}] used '#{item.name}' on [#{target.first_name}] .
# ➡️  #{item.description} #{@username}"


# notifier.ping "🎮 New item used ! 🎮
# [#{@username}] used '#{item.name}' on [#{@target_username}] .
# ➡️  #{item.description} "
#   end
# end


# "https://hooks.slack.com/services/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"
# "https://hooks.slack.com/services/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"
