xml.instruct!
xml.root do
  xml.size @cls.all.size
  xml.tag! @model_names do
    @datas.each do |data|
      xml.tag! @model_name do
        data.attributes.keys.each do |prop|
          xml.tag! prop, data.attributes[prop]
        end
      end
    end
  end
end


