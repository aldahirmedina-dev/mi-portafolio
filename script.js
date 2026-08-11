const toggle = document.getElementById('toggle-theme');
if(toggle){
  toggle.onclick = () => {
    document.body.classList.toggle('light');
  }
}
