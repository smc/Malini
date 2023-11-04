/** Dark, Light modes */
const storageKey = 'theme-preference'
let theme = 'dark';
let root = document.documentElement;
const setTheme = theme => {
  root.setAttribute('color-scheme', theme)
  localStorage.setItem(storageKey, theme)
}

const init = () => {
  // now this script can find and listen for clicks on the control
  document
    .querySelector('#theme-toggle').addEventListener('click', () => {
      // flip current value
      theme = theme === 'light'
        ? 'dark'
        : 'light'

      setTheme(theme)
    })

  document.querySelectorAll("[data-id='font-size']").forEach((element) => {
    element.addEventListener('input', function () {
      const fontSize = element.value;
      if (element.type == 'range') {
        document.querySelector('#playground-font-size').value = fontSize;
      } else {
        document.querySelector('input[type="range", data-id="font-size"]').value = fontSize;
      }
      root.style.setProperty('--playground-font-size', `${fontSize}pt`);
    });
  });


  document.querySelectorAll("[data-id='font-weight']").forEach((element) => {
    element.addEventListener('input', function () {
      const fontWeight = element.value;
      if (element.type == 'range') {
        document.querySelector('#playground-font-weight').value = fontWeight;
      } else {
        document.querySelector('input[type="range", data-id="font-weight"]').value = fontWeight;
      }
      root.style.setProperty('--playground-font-weight', fontWeight);
    });
  });

  document.querySelectorAll("[data-id='font-width']").forEach((element) => {
    element.addEventListener('input', function () {
      const fontwidth = element.value;
      if (element.type == 'range') {
        document.querySelector('#playground-font-width').value = fontwidth;
      } else {
        document.querySelector('input[type="range", data-id="font-width"]').value = fontwidth;
      }
      root.style.setProperty('--playground-font-width', `${fontwidth}%`);
    });
  });


  document.querySelectorAll("[data-id='font-slant']").forEach((element) => {
    element.addEventListener('input', function () {
      const fontSlant = element.value;
      if (element.type == 'range') {
        document.querySelector('#playground-font-slant').value = fontSlant
      } else {
        document.querySelector('input[type="range", data-id="font-slant"]').value = fontSlant;
      }
      root.style.setProperty('--playground-font-slant', `${fontSlant*-1}deg`);
    });
  });


}

window.onload = init;