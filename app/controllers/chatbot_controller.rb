# app/controllers/chatbot_controller.rb
class ChatbotController < ApplicationController
  protect_from_forgery with: :null_session # Add this to handle JSON requests

  def index
  end

  def respond
    user_question = params[:question]
    faq = Faq.find_by('question LIKE ?', "%#{user_question}%")

    if faq
      render json: { answer: faq.answer }
    else
      render json: { answer: 'I can\'t answer your question. Please email us at support@example.com.' }
    end
  end
end
