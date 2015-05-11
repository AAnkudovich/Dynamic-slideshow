json.array!(@images) do |image|
  json.extract! image, :id, :id, :link, :altText, :captionText, :possition, :right, :textAlign, :maxWidth, :top, :marginLeft, :live
  json.url image_url(image, format: :json)
end
