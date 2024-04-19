import { Pane } from 'https://cdn.jsdelivr.net/npm/tweakpane@4.0.3/dist/tweakpane.min.js';
import * as tweakpanepluginEssentials from 'https://cdn.jsdelivr.net/npm/@tweakpane/plugin-essentials@0.2.1/+esm'
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
    'onum': false,
    'sups': false,
    'abvm': true,
    'salt': true,
}


function init() {
    const contentArea = document.querySelector('.content')
    let testLines = [];
    let paragraphsMl = []
    let pangramsEn = []
    let kerning = []
    let paragraphsEn = []
    let ligaturesMl = []
    let currentTestIndex = 0;
    let testContents = []
    const fetchAndProcess = (url, callback) => {
        return fetch(url)
            .then(response => response.text())
            .then(content => {
                const lines = shuffle(content.split("\n"));
                const filteredLines = lines.filter(line => !!line.trim());
                callback(filteredLines);
            });
    };

    const fetchAndProcessAll = () => {
        const fetchPromises = [
            fetchAndProcess('./content.txt', lines => {
                testLines = lines;
            }),
            fetchAndProcess('./paragraphs.malayalam.txt', paragraphs => {
                paragraphsMl = paragraphs;
                testContents = paragraphsMl;
                contentArea.innerHTML = paragraphsMl[currentTestIndex];
            }),
            fetchAndProcess('./paragraphs.english.txt', paragraphs => {
                paragraphsEn = paragraphs;
            }),
            fetchAndProcess('./pangrams.txt', paragraphs => {
                pangramsEn = paragraphs;
            }),
            fetchAndProcess('./kerning.txt', paragraphs => {
                kerning = paragraphs;
            }),
            fetchAndProcess('./ligatures.txt', paragraphs => {
                ligaturesMl = paragraphs;
            })
        ];

        return Promise.all(fetchPromises);
    };

    fetchAndProcessAll().then(() => {
        // Code to execute after all fetches are completed
    });

    const pane = new Pane({
        title: "Malini",
        container: document.getElementById('controls')
    });
    pane.registerPlugin(tweakpanepluginEssentials);
    const config = {

        sample: "paragraphsMl",
        theme: "dark",
        "font-size": 20,
        "font-line-height": 1.5,
        "font-letter-spacing": 0,
        "font-weight": 400,
        "font-width": 100,
        "font-slant": 0,
        "font-opsz-enabled": "auto",
        "text-align": "left",
        opentypeFeatures: {
            kern: true,
            blwf: true,
            blws: true,
            akhn: true,
            pref: true,
            pres: true,
            pstf: true,
            psts: true,
            abvm: true,
            blwm: true,
            calt: true,
            liga: true,
            onum: true,
            sups: true,
            salt: 1
        }
    };


    pane.addBinding(config, "sample", {
        label: "Sample",
        options: {
            "ഖണ്ഡികകൾ": "paragraphsMl",
            "Paragraphs": "paragraphsEn",
            "സിനിമാപ്പേരുകൾ": "lines",
            "Pangrams": "pangrams",
            "Kerning": "kerning",
            "കൂട്ടക്ഷരങ്ങൾ": "ligaturesMl",
        }
    }).on('change', (ev) => {
        const selected = ev.value;
        switch (selected) {
            case 'paragraphsEn':
                testContents = paragraphsEn;
                break;
            case 'paragraphsMl':
                testContents = paragraphsMl;
                break;
            case 'lines':
                testContents = testLines;
                break;
            case 'pangrams':
                testContents = pangramsEn;
                break;
            case 'kerning':
                testContents = kerning;
                break;
            case 'ligaturesMl':
                testContents = ligaturesMl;
                break;
            default:
                // Handle default case here
                break;
        }
        contentArea.innerHTML = testContents[0];
    });

    pane.addBlade({
        view: 'buttongrid',
        size: [2, 1],
        cells: (x, y) => ({
            title: [
                ['Prev', 'Next'],
            ][y][x],
        }),
        label: 'Go',
    }).on('click', (ev) => {
        if (ev.index[0] == 0) {
            currentTestIndex = (currentTestIndex - 1 + testContents.length) % testContents.length;
        } else {
            currentTestIndex = (currentTestIndex + 1) % testContents.length;
        }
        contentArea.innerHTML = testContents[currentTestIndex];
    });


    const themeCtrl = pane.addBinding(config, "theme", {
        label: "Theme",
        options: {
            Light: "light", Dark: "dark"
        }
    });
    pane.addBinding(config, "font-size", {
        label: "Font size",
        min: 8,
        max: 148,
    });
    pane.addBinding(config, "font-line-height", {
        label: "Line height",
        min: 0,
        max: 3,
    });
    pane.addBinding(config, "font-letter-spacing", {
        label: "Letter spacing",
        min: -3,
        max: 3,
    });
    pane.addBinding(config, "text-align", {
        options: {
            left: "left", center: "center", right: "right", justify: "justify"
        }
    });
    const varFolder = pane
        .addFolder({ title: "Font variations" })

    varFolder.addBinding(config, "font-weight", {
        label: "Weight",
        min: 0,
        max: 900,
    });
    varFolder.addBinding(config, "font-width", {
        label: "Width",
        min: 75,
        max: 125,
    });
    varFolder.addBinding(config, "font-slant",
        {
            label: "Slant",
            min: -12,
            max: 0,
        });
    varFolder.addBinding(config, "font-opsz-enabled", {
        label: "Optical Size",
        options: { none: "none", auto: "auto" }
    });


    const otFolder = pane
        .addFolder({ title: "Opentype features", expanded: false })

    otFolder.addBinding(config.opentypeFeatures, "kern", { label: "Kerning" })
    otFolder.addBinding(config.opentypeFeatures, "blwf", { label: "Below base form" })
    otFolder.addBinding(config.opentypeFeatures, "blws", { label: "Below base substitution" })
    otFolder.addBinding(config.opentypeFeatures, "akhn", { label: "Above base mark positioning" })
    otFolder.addBinding(config.opentypeFeatures, "pref", { label: "Pre-base form" })
    otFolder.addBinding(config.opentypeFeatures, "pres", { label: "Pre-base positioning" })
    otFolder.addBinding(config.opentypeFeatures, "pstf", { label: "Post-base form" })
    otFolder.addBinding(config.opentypeFeatures, "psts", { label: "Post-base substitution" })
    otFolder.addBinding(config.opentypeFeatures, "abvm", { label: "Above base mark" })
    otFolder.addBinding(config.opentypeFeatures, "blwm", { label: "Below base mark" })
    otFolder.addBinding(config.opentypeFeatures, "calt", { label: "Contextual alternates" })
    otFolder.addBinding(config.opentypeFeatures, "liga", { label: "Ligatures" })
    otFolder.addBinding(config.opentypeFeatures, "onum", { label: "Oldstyle figures" })
    otFolder.addBinding(config.opentypeFeatures, "sups", { label: "Superscript" })
    otFolder.addBinding(config.opentypeFeatures, "salt", { options: { ss01: 1, ss02: 2 } });

    // Event handlers
    themeCtrl.on('change', (ev) => {
        root.setAttribute('color-scheme', ev.value)
    })


    otFolder.on('change', () => {
        const fontFeatureSettings = [];
        for (let otFeature in otFeatures) {
            let value = config.opentypeFeatures[otFeature];
            let changed = otFeatures[otFeature] !== value;
            if (changed) {
                if (otFeature === 'salt') {
                    fontFeatureSettings.push(`"${otFeature}" ${value}`);
                } else {
                    fontFeatureSettings.push(`"${otFeature}" ${value ? 1 : 0}`);
                }
            }

        }
        contentArea.style.fontFeatureSettings = fontFeatureSettings.join(', ');
    })
    const updateConfg = () => {
        for (const key of Object.keys(config)) {
            root.style.setProperty(`--${key}`, config[key])
        }
    };

    pane.on('change', updateConfg)
    updateConfg();
};


document.addEventListener("DOMContentLoaded", init);