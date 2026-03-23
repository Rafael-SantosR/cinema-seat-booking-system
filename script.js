let assentosSelecionados = [];
const precoAssento = 15.00;

function clickAssento(assentoId) {
    // Pega o elemento do assento (como findViewById em C#)
    let assento = document.getElementById(assentoId);
    
    // Verifica se o assento já está selecionado
    if (assento.classList.contains('selecionado')) {
        // Remove da seleção
        assento.classList.remove('selecionado');
        // Remove da lista (como .Remove() em C#)
        assentosSelecionados = assentosSelecionados.filter(id => id !== assentoId);
    } else {
        // Adiciona à seleção
        assento.classList.add('selecionado');
        // Adiciona à lista (como .Add() em C#)
        assentosSelecionados.push(assentoId);
    }
    atualizarRodape();
    
    console.log("Assentos selecionados:", assentosSelecionados);
}


function atualizarRodape() {
    // Pega o elemento do rodapé (como findViewById em C#)
    let rodape = document.querySelector('.foot');
    
    // Se tem assentos selecionados, mostra o rodapé
    if (assentosSelecionados.length > 0) {
        rodape.style.display = 'flex';
        
        // Atualiza os assentos na tela
        document.querySelector('.chairs').textContent = assentosSelecionados.join(', ');
        
        // Calcula e atualiza o preço total
        let precoTotal = assentosSelecionados.length * precoAssento;
        document.querySelector('.price_final').textContent = 'R$ ' + precoTotal.toFixed(2);
    } else {
        // Se não tem assentos, esconde o rodapé
        rodape.style.display = 'none';
    }
}
