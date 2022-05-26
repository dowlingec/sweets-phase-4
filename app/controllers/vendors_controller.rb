class VendorsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        vendors = Vendor.all
        render json: vendors
    end

    def show
        vendor = Vendor.find_by!(id: params[:id])
        render json: vendor, include: [:sweets, :vendor_sweet]
    end

    private

    def render_record_not_found
        render json: { "error": "Vendor not found" }
    end
end
