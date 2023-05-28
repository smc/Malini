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
const swatches =[
    'rgba(255, 255, 255, 1)',
    'rgba(244, 67, 54, 1)',
    'rgba(233, 30, 99, 0.95)',
    'rgba(156, 39, 176, 0.9)',
    'rgba(103, 58, 183, 0.85)',
    'rgba(63, 81, 181, 0.8)',
    'rgba(33, 150, 243, 0.75)',
    'rgba(3, 169, 244, 0.7)',
    'rgba(0, 188, 212, 0.7)',
    'rgba(0, 150, 136, 0.75)',
    'rgba(76, 175, 80, 0.8)',
    'rgba(139, 195, 74, 0.85)',
    'rgba(205, 220, 57, 0.9)',
    'rgba(255, 235, 59, 0.95)',
    'rgba(255, 250, 240, 1)',
    'rgba(35, 36, 31, 1)',
    'rgba(255, 193, 7, 1)',
    'rgba(47, 53, 65, 1)'
];

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
    'onum': false,
    'sups': false,
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

    })

    fetch('./paragraphs.malayalam.txt').then(response => response.text()).then((content) => {
        paragraphsMl = shuffle(content.split("\n"));
        paragraphsMl = paragraphsMl.filter(paragraph => !!paragraph.trim())
        testContents = paragraphsMl;
        contentArea.innerHTML = paragraphsMl[currentTestIndex];
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
        document.getElementById('var-optical').style.display = "none"
        document.getElementById('font-fontColor').disabled = false
        root.style.setProperty('--font', selected);


        if (selected === 'Malini') {
            document.getElementById('font-fontColor').disabled = false
            document.getElementById('var-values').style.display = "grid"
            document.getElementById('var-weight').style.display = "contents"
            document.getElementById('var-width').style.display = "contents"
            document.getElementById('var-slant').style.display = "contents"
            document.getElementById('var-optical').style.display = "contents"
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
    document.querySelectorAll('.alignments > span').forEach((element) => {
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

    document.querySelectorAll("[data-id='fontOptical']").forEach((element) => {
        element.addEventListener('change', function () {
            root.style.setProperty('--opsz-enabled',  element.checked? "auto":"none");
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
                hsla: true,
                input: true,
            }
        }
    }).on('change', (color, source, instance) => {
        root.style.setProperty('--text-color', color.toHEXA());
    })

    new Pickr({
        el: '#background-color',
        theme: 'nano',
        useAsButton: true,
        defaultRepresentation: 'HEX',
        default: '#2c3e50',
        swatches,
        components: {
            preview: true,
            opacity: true,
            hue: true,
            // Input / output Options
            interaction: {
                hex: true,
                hsla: true,
                input: true,
            }
        }
    }).on('change', (color, source, instance) => {
        root.style.setProperty('--text-background-color', color.toHEXA());
    })


    const onFeatureChange = function() {
        const fontFeatureSettings = [];
        for (let otFeature in otFeatures) {
            let checked =  document.getElementById(otFeature).checked;
            if ( otFeatures[otFeature] !== checked ) {
                fontFeatureSettings.push(`"${otFeature}" ${checked?1:0}`);
            }
        }
        contentArea.style.fontFeatureSettings = fontFeatureSettings.join(', ');
    }

    document.querySelectorAll("[name=opentype]").forEach((element) => {
        element.addEventListener('change',onFeatureChange);
    });
}


window.onload = listen
