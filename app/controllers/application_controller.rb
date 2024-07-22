class ApplicationController < ActionController::API

  private

  def render_json_response(success, data, status)
    if success
      render json: { success: success, data: data }, status: status
    else
      data = [data] if data.instance_of?(String)

      render json: { success: success, errors: data }, status: status
    end
  end
end
