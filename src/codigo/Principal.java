/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.File;

/**
 *
 * @author jamme
 */
public class Principal {
    public static void main(String[] args) {
        String rota = "C:/Users/jamme/OneDrive/Documentos/NetBeansProjects/AnalizadorLexico/src/codigo/Lexer.flex";
        gerarLexer(rota);
    }
    public static void gerarLexer(String rota) {
        File arquivo = new File(rota);
        JFlex.Main.generate(arquivo);
        
    }
}
