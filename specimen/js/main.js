function addFooters(){
   document.querySelectorAll('.page footer').forEach((footer, key) => {
    footer.innerHTML=''
    if (key == 0) {
        return;
    }
    const pageNumber = document.createElement('span')
    pageNumber.classList.add('footer-pageno')
    pageNumber.textContent = key;
    footer.append(pageNumber)

    const typeName = document.createElement('span')
    typeName.classList.add('footer-typename')
    typeName.textContent = 'Malini'
    footer.append(typeName)
    const siteName = document.createElement('span')
    siteName.textContent = 'smc.org.in/fonts/malini'
    siteName.classList.add('footer-site')
    footer.append(siteName)
});
}

window.onload = function(){
    addFooters()
}