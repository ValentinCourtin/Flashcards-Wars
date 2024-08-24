class ShopsController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user
  end



  def choice
    @user = current_user

    @item = Item.find(params[:item_id])
    # @item => USE IT, ENVOI MESSAGE SLACK !!!!!!!!!!!!!!!!!!!
    @item.destroy  # => bug prob avec find

    # Logique pour générer le contenu de la pop-up
    @content = " USE IT/CHOICE : j'ai utilisé"
    # Renvoie un partial qui sera chargé dans le turbo-frame
    render "shops/_popup_shop", locals: { content: @content }
  end




  def buy
    @user = current_user

    # use gold to buy
    if @user.gold_count >= 400
      @user.gold_count -= 400
      @user.save


      # proba
      @items = Item.all

      total_probability = @items.sum(&:probability)
      cumulative_probabilities = @items.each_with_object([]) do |item, array|
        previous_probability = array.last || 0
        array << previous_probability + item.probability
      end

      random_number = rand(0.0...total_probability)
      selected_item = nil
      cumulative_probabilities.each_with_index do |cumulative_probability, index|
        if random_number < cumulative_probability
          selected_item = @items[index]
          break
        end
      end

      # mettre dans inventory
      Inventory.create(user: @user, item: selected_item)

      # Logique pour générer le contenu de la pop-up
      @content = "BUY/LAUNCH: J'ai acheté !"

      # renvoyer l'item
      @item = selected_item

    else
      # Logique pour générer le contenu de la pop-up
      @content = "Sorry, you need more gold to launch..."
    end
  end


  # def update_carousel
  #   render partial: "shops/carousel"
  #   render partial: "shops/popup_shop"
  # end

end






















# def create
#   @comment = Comment.create(comment_params)

#   respond_to do |format|
#     format.html { redirect_to @post }
#     format.turbo_stream do
#       render turbo_stream: turbo_stream.append("comments", partial: "comments/comment", locals: { comment: @comment })
#     end
#   end
#  end

#  render partial: "popups/content", locals: { content: @content }
