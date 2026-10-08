"""Generate library metadata after a strict source audit; PNG identities never change."""
from icon_library import ROOT, run

if __name__ == "__main__":
    run(ROOT, generate=True)
