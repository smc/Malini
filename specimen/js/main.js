/** Dark, Light modes */
const storageKey = 'theme-preference'
let theme = 'dark';
let root = document.documentElement;
const setTheme = theme => {
  root.setAttribute('color-scheme', theme)
  localStorage.setItem(storageKey, theme)
}
const fittext = (elements, options) => {
  const { baseline = '50%', paddingY = 0, doc = document } = options || {};
  const bounding = typeof doc.createElementNS('http://www.w3.org/2000/svg', 'svg').getBoundingClientRect === 'function';

  for (let i = 0; i < elements.length; i++) {
    const content = elements[i].textContent;
    const svg = doc.createElementNS('http://www.w3.org/2000/svg', 'svg');
    const text = doc.createElementNS('http://www.w3.org/2000/svg', 'text');
    let rect;

    text.textContent = content;
    text.setAttribute('x', '50%');
    text.setAttribute('y', baseline);
    text.setAttribute('font-family', 'inherit');
    text.setAttribute('font-size', '1rem');
    text.setAttribute('font-weight', 'inherit');
    text.setAttribute('style', 'text-anchor:middle;dominant-baseline:middle');

    for (let j = 0; j < elements[i].attributes.length; j++) {
      svg.setAttribute(elements[i].attributes[j].name, elements[i].attributes[j].value);
    }

    svg.setAttribute('width', '100%');
    svg.setAttribute('style', 'max-height:100%');
    svg.setAttribute('fill', 'currentcolor');
    svg.setAttribute('overflow', 'visible');

    svg.appendChild(text);
    elements[i].parentNode.replaceChild(svg, elements[i]);

    rect = bounding ? text.getBoundingClientRect() : {};
    rect.width = rect.width || text.offsetWidth || text.getComputedTextLength();
    rect.height = rect.height || text.offsetHeight || 24;

    svg.setAttribute('viewBox', `0 0 ${Math.round(rect.width)} ${Math.round(rect.height) + paddingY}`);
  }
};


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


  const nodes = document.querySelectorAll('[data-fit-text]');
  fittext(nodes);
}


window.onload = init;