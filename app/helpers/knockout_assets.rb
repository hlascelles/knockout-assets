module KnockoutAssets
  def knockout_assets(options = {})
    files = {}
    Rails.application.config.assets.paths.each { |p|
      Dir["#{p}/**/*"].select { |f| f =~ /.*\.(png|gif)/ }.each { |f|
        item_path = f[p.length+1..-1]
        if !options[:exclude] || options[:exclude] !~ item_path
          files[item_path] = path_to_image(item_path)
        end
      }
    }

    render :partial => '/knockout_assets', locals: {asset_files: files}
  end
end