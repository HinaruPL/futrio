import { getAllBreeds } from '../lib/breeds-data';

const SITE_URL = 'https://futrio.pl';

function toAbsoluteUrl(path: string): string {
  return new URL(path, SITE_URL).toString();
}

function toDateOnly(value?: string): string {
  if (!value) {
    return new Date().toISOString().slice(0, 10);
  }

  const parsedDate = new Date(value.replace(' ', 'T'));

  if (Number.isNaN(parsedDate.getTime())) {
    return new Date().toISOString().slice(0, 10);
  }

  return parsedDate.toISOString().slice(0, 10);
}

function escapeXml(value: string): string {
  return value
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&apos;');
}

export function GET() {
  const today = new Date().toISOString().slice(0, 10);
  const urls = [
    {
      loc: toAbsoluteUrl('/'),
      lastmod: today,
      changefreq: 'weekly',
      priority: '1.0',
    },
    {
      loc: toAbsoluteUrl('/rasy/'),
      lastmod: today,
      changefreq: 'weekly',
      priority: '0.9',
    },
    {
      loc: toAbsoluteUrl('/kalkulatory/'),
      lastmod: today,
      changefreq: 'monthly',
      priority: '0.7',
    },
    {
      loc: toAbsoluteUrl('/poradniki/'),
      lastmod: today,
      changefreq: 'monthly',
      priority: '0.6',
    },
    {
      loc: toAbsoluteUrl('/o-nas/'),
      lastmod: today,
      changefreq: 'yearly',
      priority: '0.4',
    },
    {
      loc: toAbsoluteUrl('/kontakt/'),
      lastmod: today,
      changefreq: 'yearly',
      priority: '0.4',
    },
    {
      loc: toAbsoluteUrl('/polityka-prywatnosci/'),
      lastmod: today,
      changefreq: 'yearly',
      priority: '0.3',
    },
    {
      loc: toAbsoluteUrl('/polityka-cookies/'),
      lastmod: today,
      changefreq: 'yearly',
      priority: '0.3',
    },
    {
      loc: toAbsoluteUrl('/informacja-o-afiliacji/'),
      lastmod: today,
      changefreq: 'yearly',
      priority: '0.3',
    },
    ...getAllBreeds().map((breed) => ({
      loc: toAbsoluteUrl(`/rasy/${breed.slug}/`),
      lastmod: toDateOnly(breed.updated_at),
      changefreq: 'monthly',
      priority: '0.8',
    })),
  ];

  const body = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urls
  .map(
    (url) => `  <url>
    <loc>${escapeXml(url.loc)}</loc>
    <lastmod>${url.lastmod}</lastmod>
    <changefreq>${url.changefreq}</changefreq>
    <priority>${url.priority}</priority>
  </url>`
  )
  .join('\n')}
</urlset>
`;

  return new Response(body, {
    headers: {
      'content-type': 'application/xml; charset=utf-8',
    },
  });
}
