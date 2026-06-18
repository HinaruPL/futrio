PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS breed_images (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL,
  image_url TEXT NOT NULL,
  image_alt TEXT NOT NULL,
  image_title TEXT,
  image_credit TEXT,
  image_source_type TEXT NOT NULL DEFAULT 'placeholder' CHECK (
    image_source_type IN (
      'placeholder',
      'ai_generated',
      'own_photo',
      'licensed_stock',
      'public_domain',
      'other'
    )
  ),
  is_primary INTEGER NOT NULL DEFAULT 0,
  sort_order INTEGER NOT NULL DEFAULT 100,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_breed_images_breed_id ON breed_images(breed_id);
CREATE INDEX IF NOT EXISTS idx_breed_images_primary ON breed_images(breed_id, is_primary);
CREATE INDEX IF NOT EXISTS idx_breed_images_sort ON breed_images(breed_id, sort_order);

-- D1/SQLite może zgłosić błąd przy ponownym uruchomieniu ALTER TABLE ADD COLUMN,
-- jeśli kolumna została już dodana. Tę migrację uruchamiamy jednokrotnie.
ALTER TABLE affiliate_links ADD COLUMN anchor_text TEXT;
ALTER TABLE affiliate_links ADD COLUMN description TEXT;
ALTER TABLE affiliate_links ADD COLUMN placement TEXT CHECK (
  placement IN (
    'breed_top',
    'feeding_section',
    'costs_section',
    'health_section',
    'sidebar',
    'article_end',
    'calculator',
    'other'
  )
);
ALTER TABLE affiliate_links ADD COLUMN disclosure TEXT;
ALTER TABLE affiliate_links ADD COLUMN button_label TEXT;
ALTER TABLE affiliate_links ADD COLUMN image_url TEXT;
ALTER TABLE affiliate_links ADD COLUMN valid_from TEXT;
ALTER TABLE affiliate_links ADD COLUMN valid_to TEXT;
