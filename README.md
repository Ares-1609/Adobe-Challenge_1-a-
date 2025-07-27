<h1 align="center">📄 Challenge 1(a): PDF Heading Extraction</h1>

<p align="center">
  <b>Extract titles and headings from both text-based and image-based PDFs</b><br>
  <i>Built with Python, Docker, OCR, and NLP for structured document understanding</i>
</p>

<hr>

<h2>📌 Approach</h2>

<ul>
  <li>We designed a robust pipeline to handle both <b>text-based</b> and <b>image-based</b> PDFs.</li>
  <li>Each page is processed with logic tailored to its type:
    <ul>
      <li><b>Text-based:</b> Extracted using <code>PyMuPDF</code> by analyzing font size, weight, and layout heuristics.</li>
      <li><b>Image-based:</b> Passed through <code>PaddleOCR</code> to extract and classify text regions.</li>
    </ul>
  </li>
  <li>Detected text is filtered and categorized into heading levels based on visual hierarchy.</li>
  <li>Final output includes a structured JSON or text file per PDF, containing headings and document title.</li>
</ul>

<hr>

<h2>🧠 Models & Libraries Used</h2>

<table>
  <tr>
    <td><b>📚 PyMuPDF</b></td>
    <td>Used for parsing and analyzing text-based PDF structure</td>
  </tr>
  <tr>
    <td><b>🧾 PaddleOCR</b></td>
    <td>Used for optical character recognition in scanned/image PDFs</td>
  </tr>
  <tr>
    <td><b>🧮 Heuristics</b></td>
    <td>Font size, boldness, line spacing, and positioning to detect headings</td>
  </tr>
  <tr>
    <td><b>🧰 Python</b></td>
    <td>Main language for scripting and logic handling</td>
  </tr>
</table>

<hr>

<h2>🚀 How to Build and Run</h2>

<h3>🔨 1. Build the Docker Image</h3>

```bash
docker build --platform linux/amd64 -t mysolutionname:somerandomidentifier ./app

docker run --rm \
  -v $(pwd)/app/input:/app/input \
  -v $(pwd)/app/output:/app/output \
  --network none \
  mysolutionname:somerandomidentifier

To Run:

docker run --rm `
  -v "${PWD}\app\input:/app/input" `
  -v "${PWD}\app\output:/app/output" `
  --network none `
  mysolutionname:somerandomidentifier
```
