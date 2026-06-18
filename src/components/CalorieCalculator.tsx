import { useState } from 'preact/hooks';

type Species = 'dog' | 'cat' | 'other';
type LifeStage = 'adult' | 'young' | 'senior';
type ActivityLevel = 'low' | 'medium' | 'high';

type CalorieCalculatorProps = {
  breedName: string;
  species: Species;
  defaultWeightKg: number | null;
  dailyCaloriesMin: number | null;
  dailyCaloriesMax: number | null;
  affiliateCtaLabel?: string | null;
  affiliateCtaUrl?: string | null;
  affiliateDisclosure?: string | null;
};

const baseMultipliers: Record<Species, number> = {
  dog: 1.6,
  cat: 1.2,
  other: 1.4,
};

function formatInitialWeight(defaultWeightKg: number | null): string {
  return defaultWeightKg && defaultWeightKg > 0 ? String(defaultWeightKg) : '';
}

function getMultiplier(species: Species, lifeStage: LifeStage, activityLevel: ActivityLevel) {
  let multiplier = baseMultipliers[species];

  if (activityLevel === 'low') {
    multiplier -= 0.2;
  }

  if (activityLevel === 'high') {
    multiplier += 0.3;
  }

  if (lifeStage === 'young') {
    multiplier = Math.max(multiplier, 2);
  }

  if (lifeStage === 'senior') {
    multiplier -= 0.2;
  }

  return Math.max(multiplier, 0.8);
}

function calculateCalories(
  weightKg: number,
  species: Species,
  lifeStage: LifeStage,
  activityLevel: ActivityLevel
) {
  const rer = 70 * weightKg ** 0.75;
  const multiplier = getMultiplier(species, lifeStage, activityLevel);

  return Math.round(rer * multiplier);
}

export default function CalorieCalculator({
  breedName,
  species,
  defaultWeightKg,
  dailyCaloriesMin,
  dailyCaloriesMax,
  affiliateCtaLabel,
  affiliateCtaUrl,
  affiliateDisclosure,
}: CalorieCalculatorProps) {
  const [weightKg, setWeightKg] = useState(formatInitialWeight(defaultWeightKg));
  const [lifeStage, setLifeStage] = useState<LifeStage>('adult');
  const [activityLevel, setActivityLevel] = useState<ActivityLevel>('medium');

  const parsedWeight = Number.parseFloat(weightKg.replace(',', '.'));
  const hasValidWeight = Number.isFinite(parsedWeight) && parsedWeight > 0;
  const calories = hasValidWeight
    ? calculateCalories(parsedWeight, species, lifeStage, activityLevel)
    : null;
  const hasBreedCalories = dailyCaloriesMin !== null && dailyCaloriesMax !== null;
  const ctaLabel = affiliateCtaLabel || 'Zobacz polecane produkty';
  const isPlaceholderLink = affiliateCtaUrl?.includes('example.com') ?? false;

  return (
    <div className="calculator-card calculator-card--compact">
      <div className="calculator-form" aria-label={`Kalkulator kalorii dla rasy ${breedName}`}>
        <div className="calculator-field">
          <label htmlFor="calorie-weight">Aktualna waga w kg</label>
          <input
            id="calorie-weight"
            inputMode="decimal"
            min="0"
            name="weightKg"
            onInput={(event) => {
              setWeightKg(event.currentTarget.value);
            }}
            placeholder="np. 25"
            step="0.1"
            type="number"
            value={weightKg}
          />
          <span className="calculator-hint">Możesz wpisać wagę swojego zwierzęcia.</span>
        </div>

        <div className="calculator-field">
          <label htmlFor="calorie-life-stage">Etap życia</label>
          <select
            id="calorie-life-stage"
            name="lifeStage"
            onChange={(event) => {
              setLifeStage(event.currentTarget.value as LifeStage);
            }}
            value={lifeStage}
          >
            <option value="adult">dorosły</option>
            <option value="young">młody / rosnący</option>
            <option value="senior">senior</option>
          </select>
        </div>

        <div className="calculator-field">
          <label htmlFor="calorie-activity">Poziom aktywności</label>
          <select
            id="calorie-activity"
            name="activityLevel"
            onChange={(event) => {
              setActivityLevel(event.currentTarget.value as ActivityLevel);
            }}
            value={activityLevel}
          >
            <option value="low">niska</option>
            <option value="medium">średnia</option>
            <option value="high">wysoka</option>
          </select>
        </div>
      </div>

      <div className="calculator-result" aria-live="polite">
        <span className="calculator-result__label">Wynik orientacyjny</span>
        {calories ? (
          <>
            <strong>{calories} kcal dziennie</strong>
            <p>
              To punkt wyjścia do planowania porcji. Realne potrzeby zależą od
              zdrowia, masy ciała, kastracji/sterylizacji, aktywności i rodzaju karmy.
            </p>
            {hasBreedCalories && (
              <p>
                Zakres zapisany w bazie Futrio dla tej rasy: {dailyCaloriesMin}-
                {dailyCaloriesMax} kcal dziennie.
              </p>
            )}
          </>
        ) : (
          <p>Podaj wagę większą od 0 kg, aby zobaczyć orientacyjny wynik.</p>
        )}
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
            Polecane produkty dla tej rasy dodamy po wyborze programów afiliacyjnych.
          </p>
        )}
      </div>

      <p className="calculator-disclaimer">
        Kalkulator ma charakter orientacyjny i nie zastępuje konsultacji z lekarzem
        weterynarii ani zaleceń producenta karmy.
      </p>
    </div>
  );
}
