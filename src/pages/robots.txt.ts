export function GET() {
  return new Response(
    `User-agent: *
Allow: /
Sitemap: https://futrio.pl/sitemap.xml
`,
    {
      headers: {
        'content-type': 'text/plain; charset=utf-8',
      },
    }
  );
}
