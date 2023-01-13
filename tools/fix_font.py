from fontTools import ttLib
from fontTools.ttLib.tables import ttProgram
import sys
import logging

log = logging.getLogger(__name__)


def fix_font(fontFile):
    log.debug(f"Fixing {fontFile}")
    ttFont = ttLib.TTFont(fontFile)
    fix_unhinted_font(ttFont)
    ttFont.save(fontFile)

def fix_unhinted_font(ttFont: ttLib.TTFont):
    """Improve the appearance of an unhinted font on Win platforms by:
        - Add a new prep table which is optimized for unhinted fonts.
    """
    program = ttProgram.Program()
    assembly = ["PUSHW[]", "511", "SCANCTRL[]",
                "PUSHB[]", "4", "SCANTYPE[]"]
    program.fromAssembly(assembly)

    prep = ttLib.newTable("prep")
    prep.program = program

    ttFont["prep"] = prep


if __name__ == "__main__":
    for arg in sys.argv[1:]:
        fix_font(arg)