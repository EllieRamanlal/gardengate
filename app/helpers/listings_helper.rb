module ListingsHelper
    def image_select(listing)
        return listing.picture if listing.picture.attached?
        # use default image when no image is attached
        return "default-plant.jpg"
    end
end
