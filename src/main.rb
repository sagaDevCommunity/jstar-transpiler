module JScript
    extend self
    def transpile(script)
        script.gsub!("#hdr1", "<h1>")
        script.gsub!("#hdr2", "<h2>")
        script.gsub!("#hdr3", "<h3>")
        script.gsub!("#hdr4", "<h4>")
        script.gsub!("#hdr5", "<h5>")
        script.gsub!("#hdr6", "<h6>")
        script.gsub!("/hdr1", "</h1>")
        script.gsub!("/hdr2", "</h2>")
        script.gsub!("/hdr3", "</h3>")
        script.gsub!("/hdr4", "</h4>")
        script.gsub!("/hdr5", "</h5>")
        script.gsub!("/hdr6", "</h6>")
        script.gsub!("<inline_js>", "<script>")
        script.gsub!("</inline_js>", "</script>")
        script.gsub!("<inline_css>", "<style>")
        script.gsub!("</inline_css", "</style>")
        return script
    end
end