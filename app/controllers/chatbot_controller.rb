class ChatbotController < ApplicationController
  protect_from_forgery with: :null_session # Add this to handle JSON requests

  def index
  end

  def respond
    user_question = params[:question]
    faqs = Faq.all.to_a # Load all FAQs into memory for processing

    # Split user question into words
    user_words = user_question.downcase.split(/[^\p{Alnum}]+/)

    # Track matches and scores
    matches = []

    # Calculate match scores based on number of matched words
    faqs.each do |faq|
      faq_words = faq.question.downcase.split(/[^\p{Alnum}]+/)
      match_count = (user_words & faq_words).length # Number of common words

      if match_count > 0
        matches << { faq: faq, match_count: match_count }
      end
    end

    # Sort matches by descending match count
    matches.sort_by! { |match| -match[:match_count] }

    if matches.any?
      # Select the FAQ with the highest match count
      best_match = matches.first[:faq]
      render json: { answer: best_match.answer }
    else
      render json: { answer: 'من نمی توانم به این سوال شما پاسخ دهم لطفا به این ایمیل سوال خود را روان کنید  zabih@gmail.com' }
    end
  end
end
