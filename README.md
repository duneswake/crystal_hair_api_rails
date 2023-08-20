Ruby 3.2.2, Rails 7.0.2, Tanakai, Nokogiri, Kaminari, MiniMagic, Sidekiq-Scheduler, Devise, Ransack, PostgreSQL, DigitalOcean S3, AWS EC2
![Untitled](https://github.com/duneswake/crystal_hair_api_rails/assets/42588724/91507f84-37b1-4e2e-bf8a-33bdc4c15420)
Rails todo <br/>
complete mixtape model<br/>
save txt as .txt<br/>
file upload<br/>
full automatic sidekick scheduling <br/>
✔️isAuthenticated<br/>
✔️signedUrls<br/>
✔️ransack search<br/>
✔️kaminari pagination<br/>
✔️uuid auto gen<br/>
✔️Postgres table design<br/>
✔️sidekiq <br/>
✔️tanakai dynamic tumblr<br/>
✔️tanakai final hot desert<br/>
✔️minimagick thumbnail generation<br/>
✔️AWS-sdk upload<br/>
✔️AWS-sdk private url presigner<br/>

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_17_204246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "hypertexts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "source_url_id"
    t.string "url"
    t.string "name"
    t.integer "scrape_interval"
    t.datetime "time_last_scrape"
    t.datetime "time_initial_scrape"
    t.string "logo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "kernals", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "source_url_id"
    t.uuid "hypertext_id"
    t.string "file_type"
    t.string "file_name"
    t.string "file_path"
    t.string "url"
    t.float "size"
    t.string "author"
    t.datetime "time_posted"
    t.datetime "time_scraped"
    t.string "description"
    t.string "key_words"
    t.string "hashtags"
    t.string "likes"
    t.string "reposts"
    t.string "signed_url"
    t.string "signed_url_nail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "link_contents", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "source_url_id"
    t.string "names"
    t.string "url"
    t.datetime "post_date"
    t.integer "word_count"
    t.string "author"
    t.string "text_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mixtapes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "source_urls", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "domain"
    t.string "tag_list"
    t.string "source"
    t.string "logo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
