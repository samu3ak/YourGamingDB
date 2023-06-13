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

$(".calificacionButton").change(async function (e) {
    e.preventDefault();
    const idJuego = $(this).data("id");
    const calificacion = $(this).val();
    const data = await fetch(`/juego/${idJuego}/calificacion`, {
        method: "PUT",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ calificacion })
    });

    const res = await data.json()
    if (res.calificacion) {
        window.location.reload();
    } else {
        window.location.href = "/login";
    }
});

$(".opinionButton").click(async function (e) {
    e.preventDefault();
    const idJuego = $(this).data("id");
    const opinion = $(".opinionText").val();
    const data = await fetch(`/juego/${idJuego}/opinion`, {
        method: "PUT",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ opinion })
    });

    const res = await data.json()
    if (res.opinion) {
        window.location.reload();
    } else {
        window.location.href = "/login";
    }
});