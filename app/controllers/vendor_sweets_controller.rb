class VendorSweetsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
# rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
    
    def create
        vendorsweet = VendorSweet.create!(vendor_sweets_params)
        render json: vendorsweet
    end

    def destroy
        vendorsweet = VendorSweet.find_by!(id: params[:id])
        vendorsweet.destroy
        head :no_content
    end

    private
    def vendor_sweets_params
        params.permit(:price, :vendor_id, :sweet_id)
    end

    # def invalid_record
    #     render json: { "errors": ["validation errors"]}
    # end
    def render_record_not_found
        render json: { "error": "VendorSweet not found" }
    end
end
