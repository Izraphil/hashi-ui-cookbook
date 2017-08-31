module HashiUi
  module Helper

    def nil_or_empty?(value)
      value.nil? || value.respond_to?(:empty?) && value.empty?
    end

  end
end

[::Chef::Recipe, ::Chef::Resource, ::Chef::Mixin::Template::TemplateContext ].each do |o|
  o.send :include, ::HashiUi::Helper
end
