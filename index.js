// function to parse data
function parseData(data) {
  return data.split('\n').map(row => row.split(','));
}

// function to parse url
function parseURL(url) {
  return url.split('?')[1].split('&').reduce((acc, cur) => {
    const [key, value] = cur.split('=');
    return { ...acc, [key]: value };
  }, {});
}

function splitURLandReturnComponents(url) {
  const [path, query] = url.split('?');
  const queryComponents = query.split('&').reduce((acc, cur) => {
    const [key, value] = cur.split('=');
    return { ...acc, [key]: value };
  }, {});
  return { path, queryComponents };
}
