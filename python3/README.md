# Python3 stack

With this stack, `python` is used to run the program.
It expects a `main` options to understand which file to run.

## Features

- Supports `requirements.txt` and `Pipfile.lock` for dependency management (`build.sh`)
- Supports Django when `main` is set to `django` (`start.sh`)

## Options

- `main` (string, required): The relative path to entrypoint `.py` file, relative to the project root.
  It does accepts some special values.
  - `django`: Assume it's a django project and look for a `manage.py` under the project root.
- `version` (string, optional): The version of the Python 3. Default to the `latest` release

## Example

```json
{
  "task": "host-my-stuff",
  "stack": {
    "type": "python3",
    "main": "upload.py"
  }
}
```
