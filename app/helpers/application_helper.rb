#encoding: UTF-8
module ApplicationHelper

  def label type
      css_type = case type
        when :beginner then :beginner
        when :advanced then :advanced
        else :default
        end
      title = case type
        when :beginner then 'Beginner friendly'
        when :advanced then 'Advanced'
        else type.to_s
        end
      text = case type
        when :beginner then '✓ Beginner'
        when :advanced then '✓ Advanced'
        else type.to_s
        end
    content_tag :span, class: [ :label, :"label-#{css_type}" ], title: title do
      text
    end
  end

  def labels *labels
    labels = Array(labels)
    labels.map!{ |l| label l }
    content_tag :div, class: [ :labels ] do
      labels.join.html_safe
    end
  end
end
