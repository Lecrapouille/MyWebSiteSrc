# Code source for my personal website(s)

## Dependencies

You'll need https://github.com/Lecrapouille/WebSiteGenerator

## How to compile ?

```
git clone --recursive https://github.com/Lecrapouille/MyWebSiteSrc.git
cd MyWebSiteSrc
make list
make
```

## How to make your own website ?

Replace the MyGithubPage by your website and update the `websites.list` file.
You can add more website projects: add them next to WebSiteGenerator and update the `websites.list` file.
See https://github.com/Lecrapouille/WebSiteGenerator documentation

## How to use the generated website ?

The `make` command to build you website. If successful, should have created a directory `build`.
Then, for example, you can move generate files to your github.io directory and commit them
(in my case: https://github.com/Lecrapouille/Lecrapouille.github.io).

## License

Articles (m4 files) on MyGithubPage, as well as generated html files are under the Creative Commons licence: they are free, sharable with the same conditions with no commercial usage allowed.
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/fr/"><img alt="Licence Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/3.0/fr/88x31.png" /></a><br />Ce(tte) œuvre est mise à disposition selon les termes de la <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/fr/">Licence Creative Commons Attribution - Pas d’Utilisation Commerciale - Partage dans les Mêmes Conditions 3.0 France</a>.
