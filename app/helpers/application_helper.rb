module ApplicationHelper
  def json_for(target, options = {})
    model_serialize(target, options).to_json
  end

  def model_serialize(target, options = {})
    options[:scope] ||= self
    options[:url_options] ||= url_options
    target.active_model_serializer.new(target, options)
  end

  def render_into(template, targets, data, options = {})
    %Q[<script>$(document).ready(function() { renderInto("#{template}", #{targets.to_json},
      #{json_for(data).html_safe}, #{options.to_json}); });</script>].html_safe
  end

end
