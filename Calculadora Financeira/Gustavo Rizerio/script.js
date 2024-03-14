function mediaPrecoPorCarregamento() {
    var capacidade = Number(input_capacidade.value);
    var preco = Number(input_preco_carne.value);

    // Verifica se capacidade ou preço são inválidos ou iguais a zero
    if (capacidade <= 0 || preco <= 0) {
        p_preco_total.innerHTML = `Por favor, insira valores válidos maiores que zero para capacidade e preço.`;
        return; // interrompe a execução da função
    }

    var totalPreco = capacidade * preco;

    p_preco_total.innerHTML = `Por carregamento você tem um total de ${capacidade} Kg * R$${preco}/kg = R$${totalPreco}`;

    var perda = totalPreco * 0.08;
    p_perda.innerHTML = `Você perde em média R$${perda.toFixed(2)} por carregamento`;
}

function mostrarInvestimento() {
    var capacidade = Number(input_capacidade.value);
    var preco = Number(input_preco_carne.value);
    var investimento = Number(input_investimento.value);

    // Verifica se capacidade ou preço são inválidos ou iguais a zero
    if (capacidade <= 0 || preco <= 0 || investimento <= 0) {
        p_investimento.innerHTML = `Por favor, insira valores válidos maiores que zero para capacidade e preço.`;
        return; // interrompe a execução da função
    }

    var totalPreco = capacidade * preco;
    var perda = totalPreco * 0.08;
    var evitarPerda = 0;


    if (investimento > perda) {
        evitarPerda = perda * 0.06; 
        p_investimento.innerHTML = `Garantimos 6% a menos de perdas com o seu investimento de R$${investimento.toFixed(2)}, você deixara
        de perder R$${evitarPerda} por carregamento!`;
    } else {
        var mesesParaLucrar = (perda / investimento);
        p_investimento.innerHTML = `Seu investimento não é suficiente para garantir lucro imediato Serão necessários ${mesesParaLucrar} meses para começar a lucrar.`;
    }
}
