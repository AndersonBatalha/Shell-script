[[ -t 0 ]] || echo "Recebi pela entrada primária (pipe ou redirecionamento) $(cat -)"
[[ -n "$@" ]] && echo Recebi os seguintes parâmetros: $@
