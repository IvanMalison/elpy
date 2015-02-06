(ert-deftest elpy-importmagic--replace-block-basic-functionality ()
  (elpy-testcase ()
    (insert "line 1\nline 2\nline 3\nline 4\nline 5\n")
    (elpy-importmagic--replace-block '(1 3 "new\nblock\n"))
    (should (equal (buffer-string) "line 1\nnew\nblock\nline 4\nline 5\n"))))
