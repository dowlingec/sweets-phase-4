class VendorSweetsController < ApplicationController
# rescue_from ActiveRecord::RecordInvalid, with: :
    # DELETE ME!!!
    def index
        vendorsweets = VendorSweet.all
        render json: vendorsweets
    end
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
end
