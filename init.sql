-- Create rail_sathi_railsathicomplain table
CREATE TABLE IF NOT EXISTS rail_sathi_railsathicomplain (
    id SERIAL PRIMARY KEY,
    pnr_number VARCHAR(20),
    is_pnr_validated VARCHAR(20) DEFAULT 'not-attempted',
    name VARCHAR(255),
    mobile_number VARCHAR(15),
    complain_type VARCHAR(100),
    complain_description TEXT,
    complain_date DATE,
    complain_status VARCHAR(50) DEFAULT 'pending',
    train_id INTEGER,
    train_number VARCHAR(20),
    train_name VARCHAR(255),
    coach VARCHAR(10),
    berth_no INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(255),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(255)
);

-- Create rail_sathi_railsathicomplainmedia table
CREATE TABLE IF NOT EXISTS rail_sathi_railsathicomplainmedia (
    id SERIAL PRIMARY KEY,
    complain_id INTEGER REFERENCES rail_sathi_railsathicomplain(id) ON DELETE CASCADE,
    media_type VARCHAR(20),
    media_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(255),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(255)
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_complain_mobile ON rail_sathi_railsathicomplain(mobile_number);
CREATE INDEX IF NOT EXISTS idx_complain_date ON rail_sathi_railsathicomplain(complain_date);
CREATE INDEX IF NOT EXISTS idx_media_complain_id ON rail_sathi_railsathicomplainmedia(complain_id); 