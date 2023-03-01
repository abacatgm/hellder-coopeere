export interface Usuario {
    id: number;
    name: string;
    
    bday: any;
    genre: string;
    cpfcnpj: number | null;
    phonenumber: number | null;
    homenumber: number | null;
    cep: number | null;
    address: string;
    number: number | null;
    city: string;
    nhood: string;
    state: string;
    province: string;
    email: string;
    usuario: string;
    senha: string;   
}