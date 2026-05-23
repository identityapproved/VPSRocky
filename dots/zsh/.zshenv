if [[ -z "$VISUAL" || -z "$EDITOR" ]]; then
  for editor in nvim vim vi nano; do
    if command -v "$editor" >/dev/null 2>&1; then
      export VISUAL="${VISUAL:-$editor}"
      export EDITOR="${EDITOR:-$editor}"
      break
    fi
  done
fi
