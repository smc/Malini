/**
 * Shuffles array in place. ES6 version
 * @param {Array} a items An array containing the items.
 */
function shuffle(a) {
    for (let i = a.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
}

let root = document.documentElement;


const otFeatures = {
    'kern': true,
    'blwf': true,
    'blwm': true,
    'blws': true,
    'pref': true,
    'pres': true,
    'akhn': true,
    'pstf': true,
    'psts': true,
    'liga': true,
    'abvm': true,
    'calt': true,
}

function listen() {
    const contentArea = document.querySelector('.content')
    let testLines = [];
    let paragraphsMl = []
    let pangramsEn = []
    let kerning = []
    let paragraphsEn = []
    let ligaturesMl = []
    let currentTestIndex = 0;
    let testContents = []
    fetch('./content.txt').then(response => response.text()).then((content) => {
        testLines = shuffle(content.split("\n"));
        testLines = testLines.filter(testLine => !!testLine.trim())
        testContents = testLines;
        contentArea.innerHTML = testLines[currentTestIndex];
    })

    fetch('./paragraphs.malayalam.txt').then(response => response.text()).then((content) => {
        paragraphsMl = shuffle(content.split("\n"));
        paragraphsMl = paragraphsMl.filter(paragraph => !!paragraph.trim())
    });

    fetch('./paragraphs.english.txt').then(response => response.text()).then((content) => {
        paragraphsEn = shuffle(content.split("\n"));
        paragraphsEn = paragraphsEn.filter(paragraph => !!paragraph.trim())
    });

    fetch('./pangrams.txt').then(response => response.text()).then((content) => {
        pangramsEn = shuffle(content.split("\n"));
        pangramsEn = pangramsEn.filter(paragraph => !!paragraph.trim())
    });


    fetch('./kerning.txt').then(response => response.text()).then((content) => {
        kerning = shuffle(content.split("\n\n"))
    });

    fetch('./ligatures.txt').then(response => response.text()).then((content) => {
        ligaturesMl = shuffle(content.split("\n\n"))
    });

    document.getElementById('test-content').addEventListener('change', function () {
        const selected = this.options[this.selectedIndex].value;
        if (selected == 'paragraphsEn') {
            testContents = paragraphsEn;
        }
        if (selected == 'paragraphsMl') {
            testContents = paragraphsMl;
        }
        if (selected == 'lines') {
            testContents = testLines;
        }
        if (selected == 'pangrams') {
            testContents = pangramsEn;
        }
        if (selected == 'kerning') {
            testContents = kerning;
        }
        if (selected == 'ligaturesMl') {
            testContents = ligaturesMl;
        }
        contentArea.innerHTML = testContents[0];
    });

    document.getElementById('salt').addEventListener('change', function () {
        const selected = this.options[this.selectedIndex].value;
        contentArea.style.fontFeatureSettings = "\"salt\" "  + selected
    })

    document.getElementById('test-font').addEventListener('change', function () {
        const selected = this.options[this.selectedIndex].value;

        document.getElementById('var-weight').style.display = "none"
        document.getElementById('var-width').style.display = "none"
        document.getElementById('var-slant').style.display = "none"
        document.getElementById('font-fontColor').disabled = false
        root.style.setProperty('--font', selected);


        if (selected === 'Malini') {
            document.getElementById('font-fontColor').disabled = false
            document.getElementById('var-values').style.display = "grid"
            document.getElementById('var-weight').style.display = "contents"
            document.getElementById('var-width').style.display = "contents"
            document.getElementById('var-slant').style.display = "contents"
        }


    });


    document.getElementById('next-test').addEventListener('click', () => {
        if (currentTestIndex + 1 >= testContents.length) {
            currentTestIndex = 0;
        }
        contentArea.innerHTML = testContents[++currentTestIndex];
    });
    document.getElementById('prev-test').addEventListener('click', () => {
        if (currentTestIndex -1 <= 0) {
            currentTestIndex = testContents.length;
        }
        contentArea.innerHTML = testContents[--currentTestIndex];
    });
    document.querySelectorAll('.controls.align > li').forEach((element) => {
        element.addEventListener('click', () => {
            contentArea.style.textAlign = element.dataset.align;
        });
    });

    document.querySelectorAll("[data-id='fontSize']").forEach((element) => {
        element.addEventListener('input', function () {
            const fontSize = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-fontSize').value = fontSize;
            } else {
                document.querySelector('#font-size > input[type="range"]').value = fontSize;
            }
            root.style.setProperty('--font-size', fontSize);
        });
    });


    document.querySelectorAll("[data-id='fontWeight']").forEach((element) => {
        element.addEventListener('input', function () {
            const fontWeight = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-fontWeight').value = fontWeight;
            } else {
                document.querySelector('#font-weight > input[type="range"]').value = fontWeight;
            }
            root.style.setProperty('--weight', fontWeight);
        });
    });

    document.querySelectorAll("[data-id='fontWidth']").forEach((element) => {
        element.addEventListener('input', function () {
            const fontWidth = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-fontWidth').value = fontWidth;
            } else {
                document.querySelector('#font-width > input[type="range"]').value = fontWidth;
            }
            root.style.setProperty('--width', fontWidth);
        });
    });

    document.querySelectorAll("[data-id='fontSlant']").forEach((element) => {
        element.addEventListener('input', function () {
            const fontSlant = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-fontSlant').value = fontSlant;
            } else {
                document.querySelector('#font-slant > input[type="range"]').value = fontSlant;
            }
            root.style.setProperty('--slant', fontSlant);
        });
    });


    document.querySelectorAll("[data-id='lineHeight']").forEach((element) => {
        element.addEventListener('input', () => {
            const lineHeight = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-lineHeight').value = lineHeight;
            } else {
                document.querySelector('#line-height > input[type="range"]').value = lineHeight;
            }
            contentArea.style.lineHeight = lineHeight;
            root.style.setProperty('--font-line-height', lineHeight);
        });
    });

    document.querySelectorAll("[data-id='letterSpacing']").forEach((element) => {
        element.addEventListener('input', () => {
            const letterSpacing = element.value;
            if (element.type == 'range') {
                document.querySelector('#font-letterSpacing').value = letterSpacing;
            } else {
                document.querySelector('#letter-spacing > input[type="range"]').value =
                    letterSpacing;
            }
            root.style.setProperty('--font-letter-spacing', letterSpacing);
        });
    });

    new Pickr({
        el: '#font-fontColor',
        theme: 'nano',
        useAsButton: true,
        defaultRepresentation: 'HEX',
        default: '#000000',
        swatches,
        components: {
            preview: true,
            opacity: true,
            hue: true,
            // Input / output Options
            interaction: {
                hex: true,
                input: true,
            }
        }
    }).on('change', (color, source, instance) => {
        document.body.style.color = color.toHEXA();
    })

    new Pickr({
        el: '#background-color',
        theme: 'nano',
        useAsButton: true,
        defaultRepresentation: 'HEX',
        default: '#fff',
        swatches,
        components: {
            preview: true,
            opacity: true,
            hue: true,
            // Input / output Options
            interaction: {
                hex: true,
                input: true,
            }
        }
    }).on('change', (color, source, instance) => {
        document.body.style.backgroundColor = color.toHEXA();
    })


    document.querySelectorAll("[name=opentype]").forEach((element) => {
        element.addEventListener('change', function () {
            const checked = this.checked;
            otFeatures[element.value] = !!checked
            const fontFeatureSettings = [];
            for (let otFeature in otFeatures) {
                if (otFeatures.hasOwnProperty(otFeature) && !otFeatures[otFeature]) {
                    fontFeatureSettings.push(`"${otFeature}" off`);
                }
            }
            contentArea.style.fontFeatureSettings = fontFeatureSettings.join(',');
        });
    });


    document.getElementById('font-fontColor').style.backgroundColor = '#FFFFFF'
    document.getElementById('background-color').style.backgroundColor = '#2E3440'
    setCustomColors()
}


window.onload = listen
