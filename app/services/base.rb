class Base
    
  attr_reader :params

  def initialize(params)
    @params = params

    validate_params
  end

  def response_object(translation)
    { translation: translation }
  end

  class BaseError < StandardError; end
  class TranslationApiError < BaseError; end
  class MissingParameterError < BaseError; end
  class TranslationAPIError < BaseError; end
end