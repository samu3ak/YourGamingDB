$(".estadoButton").change(async function (e) {
    e.preventDefault();
    const idJuego = $(this).data("id");
    const estado = $(this).val();
    const data = await fetch(`/juego/${idJuego}/estado`, {
        method: "PUT",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ estado })
    });

    const res = await data.json()
    if (res.estado) {
        window.location.reload();
    } else {
        window.location.href = "/login";
    }
});