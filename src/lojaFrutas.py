class LojaFrutas:
    def __init__(self, nome, precosFruta):
        #nome: Nome da loja de fruta
        #precosFruta: Dicionário com a fruta como chave e os preços como
        #valor. Eis um exemplo:
        # {'maçãs':2.00, 'laranjas': 1.50, 'pêras': 1.75
        self.precosFruta = precosFruta
        self.nome = nome
        print('Bem vindo à loja de fruta %s' % (nome))
        
        
    def getCustoPorKg(self, fruta):
        # fruta: a string que designa a fruta
        # Devolve o custo da fruta, assumindo que a fruta está oinventário, #senão devolve None
        if fruta not in self.precosFruta:
            return None
        return self.precosFruta[fruta]
    
    
    def getPrecoCompras(self,listaCompras):
        # listaCompras: Lista de tuplos do tipo (fruta, numKgs)
        #Devolve o custo da lista de compras, apenas incluindo os pedidos de #fruta que exista na loja.
        custoTotal = 0.0
        for fruta, numKgs in listaCompras:
            custoPorKg = self.getCustoPorKg(fruta)
            if custoPorKg != None: 
                custoTotal += numKgs * custoPorKg
        return custoTotal

        
    def getNome(self):
        return self.nome