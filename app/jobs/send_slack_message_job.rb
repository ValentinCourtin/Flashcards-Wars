class SendSlackMessageJob < ApplicationJob
  queue_as :default

  def perform(target, item, user)
    # le slack mis sur heroku et env. => flashcardS
    notifier = Slack::Notifier.new ENV["SLACK_URL"], username: "Game Master"

    @username = " #{user.first_name.capitalize} #{user.last_name[0].upcase}."


    if target.nil? || item.category == "group"
      notifier.ping "🎮 New item used ! 🎮
      [#{@username}] used '#{item.name}' on [everyone].
      ➡️  #{item.description} "
    elsif target.present? || item.category == "single"
      @target_username = " #{target.first_name.capitalize} #{target.last_name[0].upcase}."
      notifier.ping "🎮 New item used ! 🎮
    [#{@username}] used '#{item.name}' on [#{@target_username}] .
    ➡️  #{item.description} "
    end

    # if item.category === "single"
    #   notifier.ping "🎮 New item used ! 🎮
    # [#{@username}] used '#{item.name}' on [#{@target_username}] .
    # ➡️  #{item.description} "
    # elsif item.category === "group"
    #   notifier.ping "🎮 New item used ! 🎮
    # [#{@username}] used '#{item.name}' on [everyone].
    # ➡️  #{item.description} "
    # end

  end
end
