//
//  NSSaudacao.swift
//  NSSaudacao
//
//  Created by Calebe on 16/01/2018.
//  Copyright © 2018 Calebe. All rights reserved.
//

import UIKit

enum Periodo {
    case manha, tarde, noite
}

class NSSaudacao: NSObject {
    
    class func definirPeriodo() -> Periodo {
        // Resgatar a data atual
        let agora = Date()
        
        // Criar as datas para comparação
        let meioDia = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: agora)!
        let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: agora)!
        
        // Comparar as datas e retornar o período
        if agora >= meioDia && agora < seisHoras {
            return Periodo.tarde
        } else if agora >= seisHoras {
            return Periodo.noite
        }
        //
        return Periodo.manha
    }
    
    class func saudacao() -> String {
        // Resgatar o período atual
        let periodo = NSSaudacao.definirPeriodo()
        
        // Retornar a mensagem conforme o período
        if periodo == .manha {
            return "Bom dia!"
        } else if periodo == .tarde  {
            return "Boa tarde!"
        }
        //
        return "Boa noite!"
    }

}








