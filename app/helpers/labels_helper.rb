#encoding: UTF-8
module LabelsHelper

  def label type

      title = case type
              when :beginner then 'Beginner friendly'
              else type.to_s
              end
      text =  case type
              # when :beginner then '★☆☆ Beginner'
              when :beginner then '★ Beginner'
              when :practitioner then '★★ Practitioner'
              when :expert then '★★★ Expert'
              else type.to_s
              end
    content_tag :span, class: [ :label, :"label-#{type}" ], title: title do
      text
    end
  end

  def labels *labels
    labels = Array(labels)
    labels.map!{ |l| label l }
    content_tag :div, class: [ :labels ] do
      labels.join('<br />').html_safe
    end
  end
end
