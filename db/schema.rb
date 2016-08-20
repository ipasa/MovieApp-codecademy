ActiveRecord::Schema.define(version: 20160819202533) do

  create_table "actors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "image"
    t.string   "release_year"
    t.string   "plot"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "parts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_parts_on_actor_id", using: :btree
    t.index ["movie_id"], name: "index_parts_on_movie_id", using: :btree
  end

end
