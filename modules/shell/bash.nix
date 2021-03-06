{
  # Removes newline from default prompt
  programs.bash = {
    promptInit = ''
        if [ "$TERM" != "dumb" -o -n "$INSIDE_EMACS" ]; then
          PROMPT_COLOR="1;31m"
          let $UID && PROMPT_COLOR="1;32m"
          if [ -n "$INSIDE_EMACS" -o "$TERM" == "eterm" -o "$TERM" == "eterm-color" ]; then
            # Emacs term mode doesn't support xterm title escape sequence (\e]0;)
            PS1="\[\033[$PROMPT_COLOR\][\u@\h:\w]\\$\[\033[0m\] "
          else
            PS1="\[\033[$PROMPT_COLOR\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\\$\[\033[0m\] "  
          fi
          if test "$TERM" = "xterm"; then
            PS1="\[\033]2;\h:\u:\w\007\]$PS1"
          fi
        fi
    '';
    
    enableCompletion = true;

    interactiveShellInit = ''
      export PATH=$PATH:~/bin
    '';
  };
}
