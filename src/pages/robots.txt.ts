export function GET() {
  return new Response(
    `User-agent: *
Allow: /
Sitemap: https://futrio.pages.dev/sitemap.xml
`,
    {
      headers: {
        'content-type': 'text/plain; charset=utf-8',
      },
    }
  );
}
