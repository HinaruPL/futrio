import { useState } from 'preact/hooks';

type Species = 'dog' | 'cat' | 'other';
type GroomingLevel = 'low' | 'medium' | 'high';
type FoodQuality = 'economy' | 'standard' | 'premium';
type GroomingMode = 'home' | 'mixed' | 'groomer';
type VetCare = 'basic' | 'extended';

type CostCalculatorProps = {
  breedName: string;
  species: Species;
  weightMinKg: number | null;
  weightMaxKg: number | null;
  groomingLevel: GroomingLevel | null;
  affiliateCtaLabel?: string | null;
  affiliateCtaUrl?: string | null;
  affiliateDisclosure?: string | null;
};

const fallbackWeights: Record<Species, number> = {
  dog: 15,
  cat: 5,
  other: 5,
};

const foodRates: Record<Species, Record<FoodQuality, number>> = {
  dog: {
    economy: 8,
    standard: 12,
    premium: 18,
  },
  cat: {
    economy: 18,
    standard: 28,
    premium: 42,
  },
  other: {
    economy: 10,
    standard: 16,
    premium: 24,
  },
};

const groomingCosts: Record<GroomingMode, Record<GroomingLevel, number>> = {
  home: {
    low: 20,
    medium: 35,
    high: 50,
  },
  mixed: {
    low: 40,
    medium: 70,
    high: 110,
  },
  groomer: {
    low: 70,
    medium: 130,
    high: 220,
  },
};

const vetCosts: Record<VetCare, Record<Species, number>> = {
  basic: {
    dog: 60,
    cat: 50,
    other: 40,
  },
  extended: {
    dog: 120,
    cat: 100,
    other: 80,
  },
};

const accessoryCosts: Record<Species, number> = {
  dog: 50,
  cat: 35,
  other: 25,
};

function getAverageWeight(
  species: Species,
  weightMinKg: number | null,
  weightMaxKg: number | null
) {
  if (weightMinKg !== null && weightMaxKg !== null) {
    return (weightMinKg + weightMaxKg) / 2;
  }

  return weightMinKg ?? weightMaxKg ?? fallbackWeights[species];
}

function formatMoney(value: number) {
  return `${Math.round(value)} zł`;
}

export default function CostCalculator({
  breedName,
  species,
  weightMinKg,
  weightMaxKg,
  groomingLevel,
  affiliateCtaLabel,
  affiliateCtaUrl,
  affiliateDisclosure,
}: CostCalculatorProps) {
  const [foodQuality, setFoodQuality] = useState<FoodQuality>('standard');
  const [groomingMode, setGroomingMode] = useState<GroomingMode>('mixed');
  const [vetCare, setVetCare] = useState<VetCare>('basic');
  const [includeAccessories, setIncludeAccessories] = useState(true);

  const averageWeight = getAverageWeight(species, weightMinKg, weightMaxKg);
  const normalizedGroomingLevel = groomingLevel ?? 'medium';
  const foodMonthly = averageWeight * foodRates[species][foodQuality];
  const groomingMonthly = groomingCosts[groomingMode][normalizedGroomingLevel];
  const vetMonthly = vetCosts[vetCare][species];
  const accessoriesMonthly = includeAccessories ? accessoryCosts[species] : 0;
  const monthlyTotal = Math.round(
    foodMonthly + groomingMonthly + vetMonthly + accessoriesMonthly
  );
  const yearlyTotal = monthlyTotal * 12;
  const ctaLabel = affiliateCtaLabel || 'Zobacz polecane produkty';
  const isPlaceholderLink = affiliateCtaUrl?.includes('example.com') ?? false;

  return (
    <div className="calculator-card calculator-card--compact">
      <div className="calculator-form" aria-label={`Kalkulator kosztów dla rasy ${breedName}`}>
        <div className="calculator-field">
          <label htmlFor="cost-food-quality">Jakość karmy</label>
          <select
            id="cost-food-quality"
            name="foodQuality"
            onChange={(event) => {
              setFoodQuality(event.currentTarget.value as FoodQuality);
            }}
            value={foodQuality}
          >
            <option value="economy">ekonomiczna</option>
            <option value="standard">standardowa</option>
            <option value="premium">premium</option>
          </select>
        </div>

        <div className="calculator-field">
          <label htmlFor="cost-grooming-mode">Model pielęgnacji</label>
          <select
            id="cost-grooming-mode"
            name="groomingMode"
            onChange={(event) => {
              setGroomingMode(event.currentTarget.value as GroomingMode);
            }}
            value={groomingMode}
          >
            <option value="home">głównie w domu</option>
            <option value="mixed">mieszana</option>
            <option value="groomer">regularnie u groomera</option>
          </select>
        </div>

        <div className="calculator-field">
          <label htmlFor="cost-vet-care">Profilaktyka i weterynarz</label>
          <select
            id="cost-vet-care"
            name="vetCare"
            onChange={(event) => {
              setVetCare(event.currentTarget.value as VetCare);
            }}
            value={vetCare}
          >
            <option value="basic">podstawowa</option>
            <option value="extended">rozszerzona</option>
          </select>
        </div>

        <label className="calculator-checkbox">
          <input
            checked={includeAccessories}
            name="includeAccessories"
            onChange={(event) => {
              setIncludeAccessories(event.currentTarget.checked);
            }}
            type="checkbox"
          />
          <span>Dolicz akcesoria i zabawki</span>
        </label>
      </div>

      <div className="cost-total" aria-live="polite">
        <div className="cost-total-main">
          <span>Orientacyjny koszt miesięczny</span>
          <strong>{formatMoney(monthlyTotal)}</strong>
        </div>
        <div className="cost-total-year">
          <span>Orientacyjny koszt roczny</span>
          <strong>{formatMoney(yearlyTotal)}</strong>
        </div>
      </div>

      <p className="calculator-note">
        To szacunek, który pomaga porównać możliwe koszty. Realne wydatki zależą
        od zdrowia zwierzęcia, cen w Twoim mieście, rodzaju karmy i stylu opieki.
      </p>

      <div className="cost-breakdown">
        <div className="cost-breakdown-row">
          <span>Karma</span>
          <strong>{formatMoney(foodMonthly)} / mies.</strong>
        </div>
        <div className="cost-breakdown-row">
          <span>Pielęgnacja</span>
          <strong>{formatMoney(groomingMonthly)} / mies.</strong>
        </div>
        <div className="cost-breakdown-row">
          <span>Weterynarz i profilaktyka</span>
          <strong>{formatMoney(vetMonthly)} / mies.</strong>
        </div>
        <div className="cost-breakdown-row">
          <span>Akcesoria i zabawki</span>
          <strong>{formatMoney(accessoriesMonthly)} / mies.</strong>
        </div>
      </div>

      <div className="calculator-cta calculator-cta--subtle">
        {affiliateCtaUrl ? (
          <>
            <a className="button button--secondary" href={affiliateCtaUrl} rel="nofollow sponsored">
              {ctaLabel}
            </a>
            {isPlaceholderLink && (
              <p className="calculator-note">
                To placeholder linku - zostanie podmieniony po wyborze programu
                afiliacyjnego.
              </p>
            )}
            {affiliateDisclosure && (
              <p className="calculator-note">{affiliateDisclosure}</p>
            )}
          </>
        ) : (
          <p className="calculator-note">
            Polecane produkty i porównania kosztów dodamy po wyborze programów
            afiliacyjnych.
          </p>
        )}
      </div>

      <p className="calculator-disclaimer">
        Kalkulator nie obejmuje nagłych kosztów leczenia, większych zabiegów ani
        jednorazowych wydatków na start.
      </p>
    </div>
  );
}
