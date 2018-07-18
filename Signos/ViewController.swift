//
//  ViewController.swift
//  Signos
//
//  Created by Marcelo Salvador on 01/01/17.
//  Copyright © 2017 Hibejix. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = [];
    var significadosSignos:[String] = [];

    override func viewDidLoad() {
        super.viewDidLoad();
        
        signos.append("Áries");
        signos.append("Touro");
        signos.append("Gêmeos");
        signos.append("Câncer");
        signos.append("Leão");
        signos.append("Viregem");
        signos.append("Libra");
        signos.append("Escorpião");
        signos.append("Sagitário");
        signos.append("Capricórnio");
        signos.append("Aquário");
        signos.append("Peixes");
        
        significadosSignos.append("Objetivos, francos e diretos os arianos são descomplicados e péssimos mentirosos. Os arianos possuem uma energia criativa admirável e um entusiasmo contagiante, sempre em busca de novidades, que os mantêm ocupados até deixarem de ser novidade.");
        
        significadosSignos.append("Calmo, obstinado, firme e estável. Isso pode resumir o que seria o Touro. Assim como o animal que o representa, o taurino tem uma força que o faz suportar qualquer coisa, desde que possa alcançar um resultado positivo e prático. ");
        
        significadosSignos.append("A melhor forma de definir Gêmeos seria: curiosidade e jovialidade. Vivos, alegres e comunicativos, estes seres geminianos, leves e desencanados, parecem estar sempre bem com todos, mas, na verdade, não estão nem aí com ninguém. Simpáticos como eles só, sempre darão a impressão que estão se interessando por alguém, mas só estão conversando e buscando informações.");
        
        significadosSignos.append("Marcados pela sensibilidade e sentimentalismo, os cancerianos sempre são emotivos, introvertidos e muito ligados à sua família. O passado é sempre muito presente, e sua preocupação em repetir muitas das sensações e prazeres no futuro faz com que eles sempre se esqueçam do presente.");
        
        significadosSignos.append("Chamam a atenção por que chamam. É claro que ele estava esperando a hora certa para entrar, quando a música fez um acorde ou então quando estava para iniciar outra. Bem... começa que ele não chega no início da festa. Chega quando ela já está fervendo, para que possa ser rec ebido pelo maior número de pessoas possível. E é claro que não será o último a sair.");
        
        significadosSignos.append("Os Virginianos são muito sistemáticos e metódicos e ter amizade com eles vai exigir um pouco de paciência. São muito críticos e não perdem tempo em dizer que você é muito descuidado com sua saúde ou que não sabe cuidar de seu carro, que notou estar fazendo um pequeno barulho na roda quando faz curvas em subidas à esquerda.");
        
        significadosSignos.append("O que mais identifica os librianos e sua maneira elegante e requintada de se portar nas relações com as pessoas. Eles têm uma maneira tão descontraída de ser que sempre parecem estar de bem com a vida. Seu estilo de vida se resume em uma só palavra: Estilo.");
        
        significadosSignos.append("Quem já não perguntou os signos das pessoas ao seu redor? Quando um deles demorar a responder e olhar com firmeza e quase atravessar sua alma, não tenha dúvida: é de ESCORPIÃO. Perceba que alguns podem engolir seco e outros quase darão um passo atrás.");
        
        significadosSignos.append("Donos de um senso de humor enorme, são capazes de fazer qualquer um animar-se em qualquer situação. Vêem o lado alegre e belo da vida e podem animar as pessoas, contando suas aventuras mesmo num velório, a não ser que seja o do seu melhor amigo, e o sagitariano considera todos assim.");
        
        significadosSignos.append("O suficiente para comer, dormir, trabalhar e conseguir ser o mais destacado dos seres humanos. Há signos que você reconhece assim que os olha. Esse pessoal de Capricórnio não é identificado de imediato. Primeiro porque eles são discretos e sóbrios, tanto para se vestir como para se comportar com as pessoas.");
        
        significadosSignos.append("Estão sempre dispostos a reformar e inovar. Você reconhecerá facilmente este pessoal tão revolucionário e progressista. Numa roda de amigos eles sempre estarão colocando uma opinião diferente e contrária à de todos, chocando e fascinando ao mesmo tempo.");
        
        significadosSignos.append("Os mais emotivos, os mais receptivos e mais simpáticos seres da Terra. Quem vai conseguir ficar com raiva desses seres tão gentis, com aquele olhar lânguido, doce e meigo? Sempre prontos a ajudar as pessoas, eles são capazes de grandes sacrifícios para salvar as pessoas dos males do mundo.");
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso";
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath);
        celula.textLabel?.text = signos[ indexPath.row ];
        return celula;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true);
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadosSignos[indexPath.row], preferredStyle: .alert);
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil);
        alertaController.addAction(acaoConfirmar);
        present(alertaController, animated: true, completion: nil);
        
        
        //print(significadosSignos[indexPath.row]);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

