//
//  ViewController.swift
//  Meus Filmes Aula
//
//  Created by leonardo manfrim on 15/07/24.
//

import UIKit

class ViewController: UITableViewController  {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        var filme : Filme
        
         
        filme = Filme(titulo: "007 - Spectre", descricao: "Descricao 1", imagem: UIImage(named: "filme1")!)
        
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "Descricao 2", imagem: UIImage(named: "filme2")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descricao 3", imagem: UIImage(named: "filme3")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Dead Pool", descricao: "Descricao 4", imagem: UIImage(named: "filme4")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "O regesso", descricao: "Descricao 5", imagem: UIImage(named: "filme5")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "Descricao 6", imagem: UIImage(named: "filme6")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Descricao 7", imagem: UIImage(named: "filme7")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "Descricao 8", imagem: UIImage(named: "filme8")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Descricao 9", imagem: UIImage(named: "filme9")!)
       filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "Descricao 10", imagem: UIImage(named: "filme10")!)
       filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        
        celula.filmeImageView.layer.cornerRadius = 20// funçao para arredondar imagens, botões, etc.
        celula.filmeImageView.clipsToBounds = true// funçao para arredondar imagens, botões, etc.
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
    


}

