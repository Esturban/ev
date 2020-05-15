---
title: "The collection"
date: 2018-02-13T12:21:57-05:00

---

I like {{ range .Site.Taxonomies.series.golang }}
    <a href="{{ .URL }}">{{ .Name }}</a>
  {{ end }} music, books, clothes, cars, etc.