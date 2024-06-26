const LIBJS_DATA_URL =
  "https://raw.githubusercontent.com/LadybirdWebBrowser/libjs-data/master";

const fetchData = (path) => {
  return fetch(`${LIBJS_DATA_URL}/${path}`, {
    method: "GET",
    cache: "no-cache",
  });
};
