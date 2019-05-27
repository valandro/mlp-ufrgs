import java.util.Arrays;
import java.util.Date;

public class Pessoa {
    private String nome;
    private Date date;
    private SexoEnum sexo;

    public Pessoa(String nome, Date date, SexoEnum sexo) throws Exception {
        setNome(nome);
        setDate(date);
        setSexo(sexo);
    }

    public Pessoa() {
        this.nome = "NOME INDEFINIDO";
        this.date = new Date();
        this.sexo = SexoEnum.INDEFINIDO;
    }

    public String getNome() {
        return nome;
    }

    public Date getDate() {
        return date;
    }

    public SexoEnum getSexo() {
        return sexo;
    }

    public void setNome(String nome) throws Exception {
        if (Character.isLetter(nome.charAt(0))) {
            this.nome = nome;
        } else {
            throw new Exception("O nome inicia com um caractere não alfabético.");
        }
    }

    public void setDate(Date date) throws Exception {
        if(new Date().before(date)) {
            throw new Exception("Data é posterior a data de hoje.");
        } else {
            this.date = date;
        }
    }

    public void setSexo(SexoEnum sexo) {
        this.sexo = sexo;
    }
}
