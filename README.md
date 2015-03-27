# docker-frigg-worker-latex
A docker container that has latex and frigg-worker installed and uses the frigg:queue:latex job queue.

### Setup
Run the following after creating `worker.yaml`:

```
docker build -t frigg-worker-latex .
docker run -t frigg-worker-latex
```

### Installed tools
* texlive-full
* texcount
* poppler-utils (pdfinfo)

----------------------

MIT © frigg.io
