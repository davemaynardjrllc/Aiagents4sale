-- The "Brain" of the Multi-Tenant System
CREATE TABLE agent_personas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    client_name TEXT NOT NULL,
    industry TEXT,
    system_prompt TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Demo Data for the Sale Pitch
INSERT INTO agent_personas (client_name, industry, system_prompt)
VALUES ('Solar Pro', 'Solar', 'You are a lead qualifier for solar installs.');
