class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image
      Paperclip.options[:command_path] = "/usr/local/bin/"
    end
  end

  def self.down
    remove_attachment :pins, :image
  end
end
