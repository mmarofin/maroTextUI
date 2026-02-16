window.addEventListener('message', function(event) {
    var item = event.data;

    if (item.action === "show") {
        const keyElement = document.getElementById('key');
        const wrapper = document.querySelector('.key-wrapper');

        keyElement.innerHTML = item.key || "E";
        document.getElementById('text').innerHTML = item.message || "Interact";

        wrapper.style.background = "#51c160c2";
        wrapper.style.boxShadow = "0 4px 0 #288334c2, inset 0 0 8px #52e365";

        if (item.type === "error") {
            wrapper.style.background = "#c0392b";
            wrapper.style.boxShadow = "0 4px 0 #8e271c, inset 0 0 8px #e74c3c";
        } else if (item.type === "info") {
            wrapper.style.background = "#2980b9";
            wrapper.style.boxShadow = "0 4px 0 #1c5d8e, inset 0 0 8px #3498db";
        }

        document.getElementById('ui-container').style.display = "block";
    } else if (item.action === "hide") {
        document.getElementById('ui-container').style.display = "none";
    }
});