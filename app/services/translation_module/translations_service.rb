module TranslationModule
  class TranslationsService < Base

    def translate
      Rails.cache.fetch(cache_key) do
        DeepL.translate(params[:text], nil, params[:to]).text
      end
    end

    private

    def cache_key
      "translation:#{params[:text]}:#{params[:to]}"
    end

    def validate_params
      raise MissingParameterError, 'Missing text parameter' if params[:text].blank?
      raise MissingParameterError, 'Missing target language parameter' if params[:to].blank?
    end
  end

end
