public class CuentaBancaria {
    //atributos
    public String numero;
    private Double saldo;

    //Constructor
    CuentaBancaria (String numero, double saldoinicial){
        this.numero = numero;
        this.saldo = saldoinicial;
    }

    public void mostrar_saldo(){
        System.out.println("Saldo de la cuenta "+ numero + ": $"+saldo);
    }

    //PP
   public static void main(String argumentos[]) {
        CuentaBancaria cuenta = new CuentaBancaria("6969-69",1000);
        cuenta.mostrar_saldo();
        cuenta.saldo = -4800;
        cuenta.mostrar_saldo();
   }
}