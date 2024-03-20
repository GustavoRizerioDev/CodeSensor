function calcularPerdas() {
    var qtd_veiculos = Number(input_quantidade_veiculos.value)
    var cargaMax = Number(input_carga_maxima.value)
    var carregamentosDia = Number(input_quantidade_carregamentos.value)

    var valorBovinaKG = 30
    var valorSuinaKG = 20
    var valorAvesKG = 16

    valorCarnes = (valorAvesKG + valorBovinaKG + valorSuinaKG / 3)

    var transportadoPorCarregamento = (cargaMax * valorCarnes)

    var perdasDuranteTransporte = transportadoPorCarregamento * 0.03

    var valorPerdidoMensalmente = (transportadoPorCarregamento * qtd_veiculos) * carregamentosDia

    

    div_resultado.innerHTML = `<div  class="informacao1">
        <p id="introducao1"></p>
        <p id="h1_resultado1"></p>
        <p id="descrição1"></p>
    </div>
    <div class="informacao2">
    <p id="introducao2"></p>
    <p id="h1_resultado2"></p>
    <p id="descrição2"></p>
</div>
<div class="informacao3">
    <p id="introducao3"></p>
    <p id="h1_resultado3"></p>
    <p id="descrição3"></p>
</div>`
introducao1.innerHTML = `<p id="introducao1"><b>Com uma carga média de ${cargaMax}kg por veículo, você terá:</b></p>`
h1_resultado1.innerHTML = `<b>R$<p style="color: #368900;">${transportadoPorCarregamento.toLocaleString('pt-BR')}</b>`
descrição1.innerHTML = `<b>sendo transportado por carregamento.</b>`
    .toLocaleString('pt-BR')

    // "toLocaleString", é uma parte do protótipo Number, para converter os números para o padrão determinado
    // - Neste caso, foi utilizado o "pt-BR" denominando o padrão Brasileiro.

    introducao2.innerHTML = `<b>3% A 8% DE PERDAS DURANTE TRANSPORTE</b>.`
    h1_resultado2.innerHTML = `<b>R$${perdasDuranteTransporte.toLocaleString('pt-BR')}</b>`
    descrição2.innerHTML = `<b>em média será perdido a cada carregamento.</b>`
        .toLocaleString('pt-BR')
    // "toLocaleString", é uma parte do protótipo Number, para converter os números para o padrão determinado
    // - Neste caso, foi utilizado o "pt-BR" denominando o padrão Brasileiro.

    introducao3.innerHTML = `<b>Com ${qtd_veiculos} veículos, mensalmente você terá em média:</b>`
    h1_resultado3.innerHTML = `<b>R$ ${valorPerdidoMensalmente.toLocaleString('pt-BR')}</b>`
    descrição3.innerHTML = `<b>perdido mensalmente.</b>`
        .toLocaleString('pt-BR')
    // "toLocaleString", é uma parte do protótipo Number, para converter os números para o padrão determinado
    // - Neste caso, foi utilizado o "pt-BR" denominando o padrão Brasileiro.
}




