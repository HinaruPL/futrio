export type FciDogBreedSeed = {
  fciNumber?: string;
  nameEn: string;
  namePl?: string;
  slug: string;
  fciGroup?: string;
  fciSection?: string;
  originCountry?: string;
  recognitionStatus: 'recognized' | 'provisional' | 'needs_verification';
  alreadyInDatabase?: boolean;
  plannedBatch: number;
};

// Lokalny plan redakcyjny rozbudowy katalogu psów FCI w Futrio.
// Batch 0 oznacza psy obecne w bazie przed etapem FCI Batch 1.
// TODO: kolejne batche dodawać partiami na podstawie oficjalnej nomenklatury FCI.
export const fciDogBreeds: FciDogBreedSeed[] = [
  { fciNumber: '255', nameEn: 'Akita', namePl: 'Akita inu', slug: 'akita-inu', fciGroup: 'Group 5', fciSection: 'Section 5', originCountry: 'Japan', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '161', nameEn: 'Beagle', namePl: 'Beagle', slug: 'beagle', fciGroup: 'Group 6', fciSection: 'Section 1.3', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '45', nameEn: 'Bernese Mountain Dog', namePl: 'Berneński pies pasterski', slug: 'bernenski-pies-pasterski', fciGroup: 'Group 2', fciSection: 'Section 3', originCountry: 'Switzerland', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '144', nameEn: 'Boxer', namePl: 'Bokser', slug: 'bokser', fciGroup: 'Group 2', fciSection: 'Section 2.1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '297', nameEn: 'Border Collie', namePl: 'Border Collie', slug: 'border-collie', fciGroup: 'Group 1', fciSection: 'Section 1', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '101', nameEn: 'French Bulldog', namePl: 'Buldog francuski', slug: 'buldog-francuski', fciGroup: 'Group 9', fciSection: 'Section 11', originCountry: 'France', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '343', nameEn: 'Italian Cane Corso', namePl: 'Cane Corso', slug: 'cane-corso', fciGroup: 'Group 2', fciSection: 'Section 2.1', originCountry: 'Italy', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '136', nameEn: 'Cavalier King Charles Spaniel', namePl: 'Cavalier King Charles Spaniel', slug: 'cavalier-king-charles-spaniel', fciGroup: 'Group 9', fciSection: 'Section 7', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '218', nameEn: 'Chihuahua', namePl: 'Chihuahua', slug: 'chihuahua', fciGroup: 'Group 9', fciSection: 'Section 6', originCountry: 'Mexico', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '5', nameEn: 'English Cocker Spaniel', namePl: 'Cocker spaniel angielski', slug: 'cocker-spaniel-angielski', fciGroup: 'Group 8', fciSection: 'Section 2', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '111', nameEn: 'Golden Retriever', namePl: 'Golden Retriever', slug: 'golden-retriever', fciGroup: 'Group 8', fciSection: 'Section 1', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '345', nameEn: 'Jack Russell Terrier', namePl: 'Jack Russell Terrier', slug: 'jack-russell-terrier', fciGroup: 'Group 3', fciSection: 'Section 2', originCountry: 'Great Britain/Australia', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '148', nameEn: 'Dachshund', namePl: 'Jamnik', slug: 'jamnik', fciGroup: 'Group 4', fciSection: 'Section 1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '122', nameEn: 'Labrador Retriever', namePl: 'Labrador Retriever', slug: 'labrador-retriever', fciGroup: 'Group 8', fciSection: 'Section 1', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '65', nameEn: 'Maltese', namePl: 'Maltańczyk', slug: 'maltanczyk', fciGroup: 'Group 9', fciSection: 'Section 1', originCountry: 'Central Mediterranean', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '166', nameEn: 'German Shepherd Dog', namePl: 'Owczarek niemiecki', slug: 'owczarek-niemiecki', fciGroup: 'Group 1', fciSection: 'Section 1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '172', nameEn: 'Poodle', namePl: 'Pudel', slug: 'pudel', fciGroup: 'Group 9', fciSection: 'Section 2', originCountry: 'France', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '147', nameEn: 'Rottweiler', namePl: 'Rottweiler', slug: 'rottweiler', fciGroup: 'Group 2', fciSection: 'Section 2.1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '212', nameEn: 'Samoyed', namePl: 'Samoyed', slug: 'samoyed', fciGroup: 'Group 5', fciSection: 'Section 1', originCountry: 'Northern Russia/Siberia', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '208', nameEn: 'Shih Tzu', namePl: 'Shih Tzu', slug: 'shih-tzu', fciGroup: 'Group 9', fciSection: 'Section 5', originCountry: 'Tibet/Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '270', nameEn: 'Siberian Husky', namePl: 'Siberian Husky', slug: 'siberian-husky', fciGroup: 'Group 5', fciSection: 'Section 1', originCountry: 'United States of America', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '183', nameEn: 'Miniature Schnauzer', namePl: 'Sznaucer miniaturowy', slug: 'sznaucer-miniaturowy', fciGroup: 'Group 2', fciSection: 'Section 1.2', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '86', nameEn: 'Yorkshire Terrier', namePl: 'Yorkshire Terrier', slug: 'yorkshire-terrier', fciGroup: 'Group 3', fciSection: 'Section 4', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: true, plannedBatch: 0 },
  { fciNumber: '342', nameEn: 'Australian Shepherd', namePl: 'Owczarek australijski', slug: 'australian-shepherd', fciGroup: 'Group 1', fciSection: 'Section 1', originCountry: 'United States of America', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '39', nameEn: 'Welsh Corgi Pembroke', namePl: 'Welsh Corgi Pembroke', slug: 'welsh-corgi-pembroke', fciGroup: 'Group 1', fciSection: 'Section 2', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '38', nameEn: 'Welsh Corgi Cardigan', namePl: 'Welsh Corgi Cardigan', slug: 'welsh-corgi-cardigan', fciGroup: 'Group 1', fciSection: 'Section 2', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '143', nameEn: 'Dobermann', namePl: 'Doberman', slug: 'doberman', fciGroup: 'Group 2', fciSection: 'Section 1.1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '153', nameEn: 'Dalmatian', namePl: 'Dalmatyńczyk', slug: 'dalmatynczyk', fciGroup: 'Group 6', fciSection: 'Section 3', originCountry: 'Croatia', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '50', nameEn: 'Newfoundland', namePl: 'Nowofundland', slug: 'nowofundland', fciGroup: 'Group 2', fciSection: 'Section 2.2', originCountry: 'Canada', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '235', nameEn: 'Great Dane', namePl: 'Dog niemiecki', slug: 'dog-niemiecki', fciGroup: 'Group 2', fciSection: 'Section 2.1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '228', nameEn: 'Afghan Hound', namePl: 'Chart afgański', slug: 'chart-afganski', fciGroup: 'Group 10', fciSection: 'Section 1', originCountry: 'Afghanistan', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '162', nameEn: 'Whippet', namePl: 'Whippet', slug: 'whippet', fciGroup: 'Group 10', fciSection: 'Section 3', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '215', nameEn: 'Bichon Frise', namePl: 'Bichon Frise', slug: 'bichon-frise', fciGroup: 'Group 9', fciSection: 'Section 1', originCountry: 'Belgium/France', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '250', nameEn: 'Havanese', namePl: 'Hawańczyk', slug: 'hawanczyk', fciGroup: 'Group 9', fciSection: 'Section 1', originCountry: 'Cuba', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '85', nameEn: 'West Highland White Terrier', namePl: 'West Highland White Terrier', slug: 'west-highland-white-terrier', fciGroup: 'Group 3', fciSection: 'Section 2', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '140', nameEn: 'Boston Terrier', namePl: 'Boston Terrier', slug: 'boston-terrier', fciGroup: 'Group 9', fciSection: 'Section 11', originCountry: 'United States of America', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '309', nameEn: 'Shar Pei', namePl: 'Shar Pei', slug: 'shar-pei', fciGroup: 'Group 2', fciSection: 'Section 2.1', originCountry: 'China', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '205', nameEn: 'Chow Chow', namePl: 'Chow Chow', slug: 'chow-chow', fciGroup: 'Group 5', fciSection: 'Section 5', originCountry: 'China', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '43', nameEn: 'Basenji', namePl: 'Basenji', slug: 'basenji', fciGroup: 'Group 5', fciSection: 'Section 6', originCountry: 'Central Africa', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '77', nameEn: 'Continental Toy Spaniel - Papillon', namePl: 'Papillon', slug: 'papillon', fciGroup: 'Group 9', fciSection: 'Section 9', originCountry: 'Belgium/France', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '97', nameEn: 'German Spitz - Pomeranian', namePl: 'Pomeranian', slug: 'pomeranian', fciGroup: 'Group 5', fciSection: 'Section 4', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '293', nameEn: 'Australian Kelpie', namePl: 'Owczarek australijski kelpie', slug: 'owczarek-australijski-kelpie', fciGroup: 'Group 1', fciSection: 'Section 1', originCountry: 'Australia', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '88', nameEn: 'Shetland Sheepdog', namePl: 'Owczarek szetlandzki', slug: 'owczarek-szetlandzki', fciGroup: 'Group 1', fciSection: 'Section 1', originCountry: 'Great Britain', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '99', nameEn: 'Weimaraner', namePl: 'Wyżeł weimarski', slug: 'wyzel-weimarski', fciGroup: 'Group 7', fciSection: 'Section 1.1', originCountry: 'Germany', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '57', nameEn: 'Hungarian Short-haired Pointer (Vizsla)', namePl: 'Vizsla', slug: 'vizsla', fciGroup: 'Group 7', fciSection: 'Section 1.1', originCountry: 'Hungary', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '146', nameEn: 'Rhodesian Ridgeback', namePl: 'Rhodesian Ridgeback', slug: 'rhodesian-ridgeback', fciGroup: 'Group 6', fciSection: 'Section 3', originCountry: 'South Africa', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '248', nameEn: 'Pharaoh Hound', namePl: 'Pies faraona', slug: 'pies-faraona', fciGroup: 'Group 5', fciSection: 'Section 6', originCountry: 'Malta', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
  { fciNumber: '243', nameEn: 'Alaskan Malamute', namePl: 'Alaskan Malamute', slug: 'alaskan-malamute', fciGroup: 'Group 5', fciSection: 'Section 1', originCountry: 'United States of America', recognitionStatus: 'recognized', alreadyInDatabase: false, plannedBatch: 1 },
];
