class VideosTranslations < ActiveRecord::Migration[4.2]
def up
    Refinery::Videos::Video.create_translation_table!({
      :title => :string,
      :video_key => :string
    }, {
      :migrate_data => true
    })
  end

  def down
    Refinery::Videos::Video.drop_translation_table! :migrate_data => true
  end
end
