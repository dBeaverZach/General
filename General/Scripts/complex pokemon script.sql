-- 1. CTE: Calculate the average stats for each type; Aggregations
WITH TypeAverages AS (
    SELECT 
        type1,
        AVG(hp) AS avg_hp,
        AVG(attack) AS avg_attack,
        AVG(defense) AS avg_defense,
        AVG(special_attack) AS avg_sp_attack,
        AVG(special_defense) AS avg_sp_defense,
        AVG(speed) AS avg_speed
    FROM pokemon
    GROUP BY type1
),

-- 2. Rank Pokémon within their type by total stats, Window Functions
RankedPokemon AS (
    SELECT 
        id, 
        name, 
        type1, 
        type2,
        hp + attack + defense + special_attack + special_defense + speed AS total_stats,
        RANK() OVER (PARTITION BY type1 ORDER BY 
                     (hp + attack + defense + special_attack + special_defense + speed) DESC) AS type_rank
    FROM pokemon
)

-- 3. Main Query: Fetch detailed Pokémon stats with rankings and classifications, Case Statements
SELECT 
    p.id,
    p.name,
    p.type1,
    p.type2,
    p.hp,
    p.attack,
    p.defense,
    p.special_attack,
    p.special_defense,
    p.speed,
    (p.hp + p.attack + p.defense + p.special_attack + p.special_defense + p.speed) AS total_stats,
    r.type_rank,
    CASE 
        WHEN p.hp > 100 THEN 'Tank'
        WHEN p.speed > 100 THEN 'Speedster'
        WHEN p.attack > 100 OR p.special_attack > 100 THEN 'Offensive'
        ELSE 'Balanced'
    END AS role_classification,
    ta.avg_hp,
    ta.avg_attack,
    ta.avg_defense,
    ta.avg_sp_attack,
    ta.avg_sp_defense,
    ta.avg_speed
FROM pokemon p
JOIN RankedPokemon r ON p.id = r.id
JOIN TypeAverages ta ON p.type1 = ta.type1
ORDER BY r.type_rank, total_stats DESC;