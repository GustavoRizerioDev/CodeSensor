function mensurarPerdas() {
    var capacidadeCarga = carga_caminhao.value;
    var kgCarne = kg_carne.value;
    var precoCarne = preco_Carne.value;


    var tipoCarne = document.querySelector('input[name="carne"]:checked').value;;


    var valorCarneUnidade = kgCarne * precoCarne;

    var transportarCarne = 0;
    var percaTransporte = 0;
    var solucaoProduto = 0;

    if (capacidadeCarga >= 1000) {
        transportarCarne = valorCarneUnidade;
        percaTransporte = transportarCarne * 0.08 
        solucaoProduto = transportarCarne * 0.03
        dadosTransporte.innerHTML = `
            Você Fez o Transporte de ${tipoCarne}.
            <br>
            <br>
            
            O Preço da Carné está ${precoCarne}.
            <br>
            <br>
    
            Capacidade Carga do Caminhão é ${capacidadeCarga}.
            <br>
            <br>
        
            O Gasto com Transporte será de ${transportarCarne}.
            <br>
            <br>
            <b style="color:red;">Você tem Perdido ${percaTransporte.toFixed(2)} por Transporte ou 8% do Gasto com Transporte.</b> 
            <br>
            <br>
            <span style="color:green;">Ao Usar nossa Solucão você ira diminuir essa porcentagem de perca em <b>60%</b>, O Valor passará a ser <b>${solucaoProduto}</b></span>
        `
    } else {
        dadosTransporte.innerHTML = `
            <span style="display:Flex; justify-content:center; color: red; font-weight: 500;">Capacidade do Caminhão é Muito abaixo</span>
        `
    }

    
}


