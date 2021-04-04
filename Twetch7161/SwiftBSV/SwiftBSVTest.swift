//
//  SwiftBSVTest.swift
//  Twetch7161
//
//  Created by Henry Hudson on 27/02/2021.
//

import SwiftUI
import SwiftBSV

struct SwiftBSVTest: View {

    var body: some View {

        VStack {
            Text("rootkey address")
                .bold()
            Text(getRootKeyAddress())
            

            
            Text("sigString")
                .bold()
                .padding(.top)
            Text(signMessage())
            
            Text("Verify Message")
                .bold()
                .padding(.top)
            Text(verifyMessage())
            
                
        }
        .padding()
    }
    
    func getRootKeyAddress() -> String {
        let mnemonic = Bip39.create()
        let seed = Bip39.createSeed(mnemonic: mnemonic)
        let rootKey = Bip32(seed: seed, network: .mainnet)
        
        return rootKey.address.description
    }
    
    func signMessage() -> String {
        let message = "hello!"
        let privateKey = PrivateKey()
        //let address = privateKey.address
        let sigString = BitcoinSignedMessage.sign(message: message, privateKey: privateKey)
        
        print(sigString.description)
        
        return sigString.description
    }
    
    func verifyMessage() -> String {
        let message = "hello!"
        let address = Address(fromString: "1D7ZaBLeT3FFr1mcKAWorZHdE18kEVvuaY")!

        let sigString = "IOsRLk8/CBpLvOecpV0kh4ajjgpUH04T3kkJRPJng5kMOe3Az0gwGx2n8dHyooGykrqB6SuMCPtahZ5EN/TcZzg="

        let valid = BitcoinSignedMessage.verify(message: message, signature: sigString, address: address)
        
        return valid.description
    }
    
//    func createTransaction() {
//        let privateKey = PrivateKey(data: wallet.privateKey)
//        let publicKey = privateKey.publicKey
//        let address = publicKey.address
//
//        let txb = TxBuilder()
//            .setFeePerKb(500)
//            .setChangeAddress(address)
//
//        // Add inputs to the transaction
//        var numberOfInputs = 0
//        for utxo in utxos {
//            let txHashBuf = Data(Data(hex: utxo.txId).reversed())
//            let txOut = TransactionOutput(
//                value: utxo.satoshis,
//                lockingScript: Data(hex: utxo.script)
//            )
//
//            txb.inputFromPubKeyHash(
//                txHashBuffer: txHashBuf,
//                txOutNum: utxo.outputIndex,
//                txOut: txOut,
//                pubKey: publicKey
//            )
//
//            numberOfInputs = numberOfInputs + 1
//        }
//
//        // Add a data output
//
//        var script = try! Script().append(.OP_FALSE).append(.OP_RETURN).appendData("hello, world!".data(using: .utf8)!)
//
//        txb.outputToScript(
//            value: 0,
//            script: script
//        )
//
//        // Add an output to another Address (pay-to-pubkey-hash)
//        let value = UInt64(payee.amount * 100_000_000)
//        txb.outputToAddress(value: value, address: Address(fromString: payee.to)!)
//
//        // Build, using all the inputs
//
//        try! txb.build(useAllInputs: true)
//
//        // Finally sign the built transaction
//        for input in 0..<numberOfInputs {
//            txb.signInTx(nIn: input, privateKey: privateKey)
//        }
//
//
//        // Do something with the signed transaction!
//        txb.transaction
//    }
}

struct SwiftBSVTest_Previews: PreviewProvider {
    static var previews: some View {
        SwiftBSVTest()
    }
}
