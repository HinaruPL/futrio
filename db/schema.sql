PRAGMA foreign_keys = ON;

CREATE TABLE breeds (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  species TEXT NOT NULL CHECK (species IN ('dog', 'cat', 'other')),
  short_description TEXT,
  long_description TEXT,
  weight_min_kg REAL,
  weight_max_kg REAL,
  height_min_cm REAL,
  height_max_cm REAL,
  life_expectancy_min_years INTEGER,
  life_expectancy_max_years INTEGER,
  activity_level TEXT CHECK (activity_level IN ('low', 'medium', 'high')),
  grooming_level TEXT CHECK (grooming_level IN ('low', 'medium', 'high')),
  training_difficulty TEXT CHECK (training_difficulty IN ('easy', 'medium', 'hard')),
  family_friendly_score INTEGER CHECK (family_friendly_score BETWEEN 1 AND 5),
  apartment_score INTEGER CHECK (apartment_score BETWEEN 1 AND 5),
  daily_calories_min INTEGER,
  daily_calories_max INTEGER,
  meta_title TEXT,
  meta_description TEXT,
  h1 TEXT,
  status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'published', 'archived')),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE health_conditions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  slug TEXT NOT NULL UNIQUE,
  description TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE breed_health_conditions (
  breed_id INTEGER NOT NULL,
  condition_id INTEGER NOT NULL,
  risk_level TEXT CHECK (risk_level IN ('low', 'medium', 'high')),
  note TEXT,
  PRIMARY KEY (breed_id, condition_id),
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE,
  FOREIGN KEY (condition_id) REFERENCES health_conditions(id) ON DELETE CASCADE
);

CREATE TABLE affiliate_links (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER,
  label TEXT NOT NULL,
  category TEXT NOT NULL CHECK (
    category IN (
      'dry_food',
      'wet_food',
      'barf',
      'supplements',
      'accessories',
      'insurance',
      'shop',
      'other'
    )
  ),
  url TEXT NOT NULL,
  merchant TEXT,
  network TEXT,
  priority INTEGER NOT NULL DEFAULT 100,
  is_active INTEGER NOT NULL DEFAULT 1,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE SET NULL
);

CREATE TABLE crossbreeds (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_a_id INTEGER NOT NULL,
  breed_b_id INTEGER NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  short_description TEXT,
  character_description TEXT,
  appearance_description TEXT,
  care_description TEXT,
  health_description TEXT,
  ai_generated_notes TEXT,
  editorial_status TEXT NOT NULL DEFAULT 'draft' CHECK (
    editorial_status IN ('draft', 'reviewed', 'published', 'archived')
  ),
  meta_title TEXT,
  meta_description TEXT,
  h1 TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_a_id) REFERENCES breeds(id) ON DELETE CASCADE,
  FOREIGN KEY (breed_b_id) REFERENCES breeds(id) ON DELETE CASCADE,
  CHECK (breed_a_id <> breed_b_id)
);

CREATE TABLE calculator_profiles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL UNIQUE,
  base_activity_multiplier REAL NOT NULL DEFAULT 1.4,
  puppy_multiplier REAL NOT NULL DEFAULT 2.0,
  senior_multiplier REAL NOT NULL DEFAULT 1.2,
  monthly_food_cost_min_pln INTEGER,
  monthly_food_cost_max_pln INTEGER,
  grooming_cost_min_pln INTEGER,
  grooming_cost_max_pln INTEGER,
  vet_cost_monthly_estimate_pln INTEGER,
  accessories_monthly_estimate_pln INTEGER,
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE
);

CREATE TABLE content_blocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  entity_type TEXT NOT NULL CHECK (entity_type IN ('breed', 'crossbreed')),
  entity_id INTEGER NOT NULL,
  block_key TEXT NOT NULL,
  heading TEXT,
  body TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 100,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_breeds_species ON breeds(species);
CREATE INDEX idx_breeds_status ON breeds(status);
CREATE INDEX idx_breeds_slug ON breeds(slug);

CREATE INDEX idx_health_conditions_slug ON health_conditions(slug);

CREATE INDEX idx_affiliate_links_breed_id ON affiliate_links(breed_id);
CREATE INDEX idx_affiliate_links_category ON affiliate_links(category);
CREATE INDEX idx_affiliate_links_active ON affiliate_links(is_active);

CREATE INDEX idx_crossbreeds_breed_a ON crossbreeds(breed_a_id);
CREATE INDEX idx_crossbreeds_breed_b ON crossbreeds(breed_b_id);
CREATE INDEX idx_crossbreeds_status ON crossbreeds(editorial_status);

CREATE INDEX idx_calculator_profiles_breed_id ON calculator_profiles(breed_id);

CREATE INDEX idx_content_blocks_entity ON content_blocks(entity_type, entity_id);
CREATE INDEX idx_content_blocks_sort ON content_blocks(entity_type, entity_id, sort_order);

CREATE TABLE breed_content_sections (
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

CREATE INDEX idx_breed_content_sections_breed_id ON breed_content_sections(breed_id);
CREATE INDEX idx_breed_content_sections_sort ON breed_content_sections(breed_id, sort_order);
