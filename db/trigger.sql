CREATE TRIGGER `before_insert_ranking_advanced` BEFORE INSERT ON `ranking_advanced`
 FOR EACH ROW BEGIN
    DECLARE base_name VARCHAR(255);
    DECLARE suffix INT DEFAULT 0;
    DECLARE new_name VARCHAR(255);
    DECLARE suffix_record INT;

    SET base_name = NEW.name;
    SET new_name = base_name;

    -- Überprüfen und Anpassen des Namens
    WHILE EXISTS (SELECT 1 FROM ranking_advanced WHERE name = new_name) DO
        -- Check if base_name exists in the suffix table
        SELECT suffix INTO suffix_record FROM name_suffix WHERE base_name = base_name FOR UPDATE;

        IF suffix_record IS NULL THEN
            -- Insert new base_name into suffix table
            INSERT INTO name_suffix (base_name, suffix) VALUES (base_name, 1);
            SET suffix = 1;
        ELSE
            -- Update suffix value and set new suffix
            SET suffix = suffix_record + 1;
            UPDATE name_suffix SET suffix = suffix WHERE base_name = base_name;
        END IF;

        SET new_name = CONCAT(base_name, '_', suffix);
    END WHILE;

    SET NEW.name = new_name;
END