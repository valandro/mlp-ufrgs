import java.util.Date;

public class Aluno extends Pessoa {

    private String codigo;
    private NivelEnum nivel;

    public Aluno() throws Exception {
        super("NOME INDEFINIDO", new Date(), SexoEnum.INDEFINIDO);
        this.codigo = "00000000";
        this.nivel = NivelEnum.INDEFINIDO;
    }

    public Aluno(String nome, Date date, SexoEnum sexo, String codigo, NivelEnum nivel) throws Exception {
        super(nome, date, sexo);
        setCodigo(codigo);
        setNivel(nivel);
    }


    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) throws Exception {
        for (int i = 0; i < codigo.length() - 1; i++) {
            if (!Character.isDigit(codigo.charAt(i))) {
                throw new Exception("Código contém caractere não numérico na posição: " + i);
            }
        }
        this.codigo = codigo;
    }

    public NivelEnum getNivel() {
        return nivel;
    }

    public void setNivel(NivelEnum nivel) {
        this.nivel = nivel;
    }
}
