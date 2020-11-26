const toggleHistory = () => {
  const btnHistory = document.getElementById("btn-history");

  if (btnHistory) {
    btnHistory.addEventListener('click', () => {
      const history = document.getElementById("dsp-history");
      history.classList.toggle("d-none");
  
      if (btnHistory.innerText.includes("Show")) {
        btnHistory.innerText = "Hide history"
      }
      else {
        btnHistory.innerText = "Show history"
      }
    });
  }
}

export { toggleHistory };