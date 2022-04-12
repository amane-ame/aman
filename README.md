# aman

**It will now only work on macOS.** PRs are always welcomed.

You can only install this stupid plugin manually.

```sh
git clone "git@github.com:amane-ame/aman.git" "$ZSH_CUSTOM/plugins/aman"
```

Then add `aman` to the plugins array of `.zshrc`.

```zsh
plugins=(... aman)
```

## Usage

```sh
aman printf
aman 3 printf
aman sth_you_want_to_google
```

It just simply view the man pages with a PostScript viewer.

Don't try `aman -f printf` or any argument like that. It just gives stupid results now.

The viewer is specified by default as `Preview.app`.

If there is no corresponding manual entry, it would Google for you.

You can set `AMAN_PREFERRED_LANGUAGE` to to your preferred language.

```sh
export AMAN_PREFERRED_LANGUAGE=ja_JP
```

Thanks for playing with this stupid plugin, enjoy.
