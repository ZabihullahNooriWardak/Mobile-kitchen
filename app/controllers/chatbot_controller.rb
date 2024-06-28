class ChatbotController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def respond
    user_question = params[:question]
    faqs = Faq.all

    # Prepare the TF-IDF model
    documents = faqs.map { |faq| TfIdfSimilarity::Document.new(faq.question) }
    model = TfIdfSimilarity::TfIdfModel.new(documents)
    user_document = TfIdfSimilarity::Document.new(user_question)

    # Calculate cosine similarity between user question and each FAQ question
    similarities = model.similarities(user_document)
    faq_similarities = faqs.each_with_index.map { |faq, index| [faq, similarities[index]] }

    # Find the FAQ with the highest similarity score
    best_match = faq_similarities.max_by { |faq, similarity| similarity }

    if best_match && best_match[1] > 0.1 # Adjust the threshold as needed
      render json: { answer: best_match[0].answer }
    else
      render json: { answer: "I can't answer your question. Please email us at support@example.com." }
    end
  end
end
