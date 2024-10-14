function () {
  const pageTitle = document.title;
  const pageUrl = window.location.href;
  const titleWithLink = `[${pageTitle}](${pageUrl})`;

  function copyToClipboard(text) {
    try {
      navigator.clipboard.writeText(text).then();
    } catch (e) {
      alert(`Failed to copy text to clipboard. err = ${e}`)
    }
  }

  copyToClipboard(titleWithLink);
}

javascript:(function () {
  if (typeof this.tgt === 'undefined') this.tgt = document.querySelectorAll('input[type="password"]');
  var nit = (this.tgt.item(0).getAttribute('type') == 'password') ? 'text' : 'password';
  for (var i = 0; i < this.tgt.length; i++) this.tgt.item(i).setAttribute('type', nit);
})();

javascript:void (function () {
  let w = window.open(null, null, "height=60,width=500"), d = w.document;
  d.open();
  d.write('<body style="padding:10px 15px;margin:0;display:flex;flex-flow:row nowrap;align-items:center"><a id="a" style="flex-grow:1" target="_blank"></a><button id="copy" style="width:100px;height:30px;margin-left:10px;cursor:pointer">Copy</button></body>');
  d.title = "Copy as rich-text";
  let u = window.location.toString(), c = d.getElementById("copy"), a = d.getElementById("a");
  a.innerHTML = window.document.title;
  a.href = u;

  function copyToClip(doc, html, text) {
    function listener(e) {
      e.clipboardData.setData("text/html", html);
      e.clipboardData.setData("text/plain", text || html);
      e.preventDefault()
    }

    doc.addEventListener("copy", listener);
    doc.execCommand("copy");
    doc.removeEventListener("copy", listener)
  }

  c.onclick = function () {
    copyToClip(d, a.outerHTML, u);
    w.close()
  };
  d.close();
  c.focus()
}())