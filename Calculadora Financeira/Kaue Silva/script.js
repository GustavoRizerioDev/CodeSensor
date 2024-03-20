function calcularFinancas() {
    let qtdCaminhoesTransporte = Number(input_qtdCaminhoesTransporte.value);
    let qtdTransportes = Number(input_qtdTransportes.value);
    let qtdCarnes = Number(input_qtdCarnes.value);
    let tipoCarne = input_tipoCarne.value;
    let precoKgCarne = 1;

    let qtdCarnesAno = qtdCarnes * 12;

    let qtdTransportesTotal = qtdCaminhoesTransporte * qtdTransportes;
    let qtdTransportesTotalAno = qtdTransportesTotal * 12;

    let valorPerdidoAno = 0;
    let qtdCarnesPerdidasAno = 0;

    let qtdCarnesPerdidasAnoSolucao = 0;
    let valorPerdidoAnoSolucao = 0;

    if (tipoCarne == 'bovina') {
        precoKgCarne = 35.98;
    } else if (tipoCarne == 'suina') {
        precoKgCarne = 18.90;
    } else if (tipoCarne == 'ave') {
        precoKgCarne = 19.99;
    } else {
        precoKgCarne = precoKgCarne;
    }

    qtdCarnesPerdidasAno = qtdCarnesAno * 0.08;
    valorPerdidoAno = qtdTransportesTotalAno * (precoKgCarne * qtdCarnesPerdidasAno);
    qtdCarnesPerdidasAnoSolucao = qtdCarnesAno * 0.03;
    valorPerdidoAnoSolucao = qtdTransportesTotalAno * (precoKgCarne * qtdCarnesPerdidasAnoSolucao);

    resultado.innerHTML = `
    <div id="resposta">
        <div class="div_boxResposta">
            <p class="enunciado">Número aproximado de carne ${tipoCarne} perdida anualmente <span style="color: #fc0000; font-weight: bold;">(~8%)</span></p>
            <p class="resposta_semSolucao"><span>${qtdCarnesPerdidasAno}KG.</span></p>
            <p class="enunciado">Margem de prejuízos anuais durante o transporte</p>
            <p class="resposta_semSolucao">R$${valorPerdidoAno.toLocaleString('pt-BR')}</p>
        </div>
        
        <div class="div_boxResposta">
            <p class="enunciado">Número estimado de carne ${tipoCarne} perdida anualmente ao utilizar nossa solução <span style="color: #19bb19; font-weight: bold;">(~3%)</span></p>
            <p class="resposta_solucao">${qtdCarnesPerdidasAnoSolucao}KG</p>
    
            <p class="enunciado">Valor estimado que será perdido anualmente após a utilização de nossa solução durante o transporte</p>
            <p class="resposta_solucao">R$<span>${valorPerdidoAnoSolucao.toLocaleString('pt-BR')}</span></p>
        </div>
    </div>
    `;
}


