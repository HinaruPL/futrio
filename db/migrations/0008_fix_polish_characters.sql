PRAGMA foreign_keys = ON;

UPDATE breed_registry_recognitions
SET organization_name = 'Fédération Cynologique Internationale'
WHERE organization_code = 'FCI'
  AND organization_name = 'F' || char(63) || 'd' || char(63) || 'ration Cynologique Internationale';

UPDATE breed_registry_recognitions
SET organization_name = 'Fédération Internationale Féline'
WHERE organization_code = 'FIFe'
  AND organization_name = 'F' || char(63) || 'd' || char(63) || 'ration Internationale F' || char(63) || 'line';

UPDATE breed_registry_recognitions
SET note = REPLACE(
  REPLACE(note, 'oficjalnej li' || char(63) || 'cie', 'oficjalnej liście'),
  'Nazwa w ' || char(63) || 'r' || char(63) || 'dle',
  'Nazwa w źródle'
)
WHERE note LIKE '%' || 'li' || char(63) || 'cie' || '%'
   OR note LIKE '%' || char(63) || 'r' || char(63) || 'dle' || '%';
