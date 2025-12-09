import toml


def main():
    output_txt = "requirements-all.txt"
    pyproject = toml.load("pyproject.toml")
    name = pyproject["project"]["name"]

    with open(output_txt, "w") as f:
        if "dependencies" in pyproject["project"]:
            for dep in pyproject["project"]["dependencies"]:
                f.write(dep + "\n")
        if "optional-dependencies" in pyproject["project"]:
            for extra_deps in pyproject["project"]["optional-dependencies"].values():
                for dep in extra_deps:
                    if dep.startswith(name):
                        continue
                    f.write(dep + "\n")

if __name__ == "__main__":
    main()
