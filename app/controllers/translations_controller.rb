# frozen_string_literal: true

class TranslationsController < ApplicationController

  def translate
    translation_object = TranslationModule::TranslationsService.new(translation_params).translate

    render_json_response(true, translation_object, :ok)
  end

  private

  def translation_params
    params.permit(:text, :to)
  end

end
