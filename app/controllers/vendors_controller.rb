class VendorsController < ApplicationController
    def index
        vendors = Vendor.all
        render json: vendors
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        render json: vendor
    end

    private
    def vendor_params
        params.permit(:id, :name)
    end
end
