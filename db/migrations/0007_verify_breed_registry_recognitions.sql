-- Realna weryfikacja statusów uznania ras w oficjalnych organizacjach.
-- Źródła: FCI, AKC, The Royal Kennel Club, UKC, TICA, CFA, FIFe, GCCF, WCF.

PRAGMA foreign_keys = ON;

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Italian Cane Corso.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso Italiano.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cocker Spaniel.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Russell Terrier.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon Cat.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'WCF';
