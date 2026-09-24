document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('a[href]').forEach(a => {
    const url = new URL(a.href, location.href);
    if (url.origin !== location.origin || /\.pdf$/i.test(url.pathname)) {
      a.target = '_blank'; a.rel = 'noopener noreferrer';
    }
  });
});
