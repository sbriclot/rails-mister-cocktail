const newCocktailSetFocus = () => {
  const curPage = document.URL;
  if (curPage.includes("new") || curPage.includes("edit")) {
    document.getElementById("cocktail_name").focus();
  }
};

export { newCocktailSetFocus }
