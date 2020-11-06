
CMD_REPORTER_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
function reportResult() {
    if $*; then
        EXIT_CODE=$?
        say $(sort -R $CMD_REPORTER_DIR/successLines | head -n 1)
    else
        EXIT_CODE=$?
        say $(sort -R $CMD_REPORTER_DIR/failureLines | head -n 1)
    fi
    return $EXIT_CODE
}

# Consider adding some aliases for your build tools here. Ex:
# alias npm='reportResult npm'
# alias yarn='reportResult yarn'
# alias mvn='reportResult mvn'
# alias gradle='reportResult gradle'
