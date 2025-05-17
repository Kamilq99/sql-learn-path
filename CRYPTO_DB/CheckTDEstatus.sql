SELECT 
    db.name,
    db.is_encrypted,
    dek.encryption_state,
    dek.percent_complete,
    dek.key_algorithm,
    dek.key_length
FROM
    sys.databases db    
LEFT JOIN
    sys.dm_database_encryption_keys dek
    ON db.database_id = dek.database_id
WHERE
    db.name = 'Library';