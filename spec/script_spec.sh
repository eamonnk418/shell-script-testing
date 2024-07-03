Describe 'script.sh'
  Include lib/script.sh
  It 'says hello'
    When call goodbye ShellSpec
    The output should equal 'Goodbye, ShellSpec!'
  End
End