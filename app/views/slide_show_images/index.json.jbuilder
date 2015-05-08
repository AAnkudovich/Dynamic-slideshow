json.array!(@slide_show_images) do |slide_show_image|
  json.extract! slide_show_image, :id, :link, :altText, :captionText, :possition, :right, :textAllign, :maxWidth, :top, :marginLeft
  json.url slide_show_image_url(slide_show_image, format: :json)
end
