require "spec_helper"

RSpec.describe FileGroups do
  %w[word_processing spreadsheet video image].each do |method|
    context "given #{method}" do
      it "returns extensions for common files" do
        ext = described_class.public_send(method).extensions
        expect(ext).to be_an Array
        expect(ext.size).to be > 1
      end

      it "returns extensions for all files" do
        expect(described_class.public_send(method).extensions.size).to be < described_class.public_send(method).extensions(true).size
      end

      it "returns mime types for common files" do
        mime = described_class.public_send(method).mime_types
        expect(mime).to be_an Array
        expect(mime.size).to be > 1
      end

      it "returns mime types for all files" do
        expect(described_class.public_send(method).mime_types.size).to be <= described_class.public_send(method).mime_types(true).size
      end
    end
  end

  it "returns groups based on their tag" do
    expect(described_class.spreadsheet.excel.mime_types).to be_an Array
    expect(described_class.spreadsheet.excel.mime_types.size).to be > 1

    expect(described_class.spreadsheet.excel.extensions).to be_an Array
    expect(described_class.spreadsheet.excel.extensions.size).to be > 1

    expect(described_class.image.raster.extensions).to be_an Array
    expect(described_class.image.vector.extensions.size).to be >= 1
  end
end
