PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS breed_content_sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL,
  section_key TEXT NOT NULL CHECK (
    section_key IN (
      'character',
      'for_whom',
      'home_and_apartment',
      'children_and_family',
      'activity',
      'grooming',
      'feeding',
      'health',
      'costs',
      'common_mistakes',
      'fun_facts',
      'faq'
    )
  ),
  heading TEXT NOT NULL,
  body TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 100,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE,
  UNIQUE (breed_id, section_key)
);

CREATE INDEX IF NOT EXISTS idx_breed_content_sections_breed_id ON breed_content_sections(breed_id);
CREATE INDEX IF NOT EXISTS idx_breed_content_sections_sort ON breed_content_sections(breed_id, sort_order);
