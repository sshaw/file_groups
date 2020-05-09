require "json"

module Util
  class << self
    def groups(json)
      groups = Hash.new { |h, k| h[k] = {} }
      data = JSON.parse(File.read(json))

      data.each do |record|
        record["categories"].each do |category|
          groups[category]["files"] ||= []
          groups[category]["files"].concat(record["files"])

          if record["tags"].any?
            tags = groups[category]["tags"] ||= Hash.new { |h, k| h[k] = [] }
            record["tags"].each do |tag|
              tags[tag].concat(record["files"])
            end
          end
        end
      end

      groups
    end

    def extensions(files, common)
      if common
        files.select { |f| f["common"] }.map { |f| f["extension"] }.uniq
      else
        files.map { |f| f["extension"] }.uniq
      end
    end

    def mime_types(files, common)
      if common
        files.select { |f| f["common"] }.flat_map { |f| f["media_types"] }.uniq
      else
        files.flat_map { |f| f["media_types"] }.uniq
      end
    end
  end
end
