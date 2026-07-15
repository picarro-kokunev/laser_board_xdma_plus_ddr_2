#
# List loaded modules and their paths, excluding site-packages and standard library modules.
#
import sys

def main():
    for name, mod in sorted(sys.modules.items()):
        if mod is None:
            continue
        path = getattr(mod, "__file__", None)
        if path and "site-packages" not in path and "/lib/python" not in path:
            print(name, "->", path)

if __name__ == "__main__":
    main()
    