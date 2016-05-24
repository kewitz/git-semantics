# git-semantics
Git hook to ensure semantic commit messages.

You can install this on your templates using `./install.sh` so when you use `git init` you'll have this done.
You can also install this on specific repositories copying `commit-msg` to `.git/hooks`.

#### Example
```
leo@sputnik:~/Code/git-semantics$ git commit -am "teste"
Please use semantic commit messages:
feat: add hat wobble
^--^  ^------------^
|     |
|     +-> Summary in present tense.
|
+-------> Type: chore, docs, feat, fix, refactor, style, or test.
leo@sputnik:~/Code/git-semantics$ git commit -m "feat: add installer"
[master 6333498] feat: add installer
 1 file changed, 23 insertions(+)
 create mode 100755 install.sh
```

#### References

1. https://seesparkbox.com/foundry/semantic_commit_messages
2. http://karma-runner.github.io/0.10/dev/git-commit-msg.html

#### License
Code released under the Beer-Ware license.
```
THE BEER-WARE LICENSE:
<leokewitz@gmail.com> wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return
Leonardo Kewitz
```
