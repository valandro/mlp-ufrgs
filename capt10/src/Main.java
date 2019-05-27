import java.util.Date;

public class Main {
    public static void main(String[] args) throws Exception {
        Pessoa pessoaIndefinida = new Pessoa();
        Pessoa pessoaDefinida = new Pessoa("Érico", new Date(96,5,20,3,45), SexoEnum.MASCULINO);

        System.out.println("Pessoa indefinida -- " +
                            "\n Nome: " + pessoaIndefinida.getNome() +
                            "\n Nascimento: " + pessoaIndefinida.getDate().toString() +
                            "\n Sexo: " + pessoaIndefinida.getSexo().name());

        System.out.println("Pessoa definida -- " +
                "\n Nome: " + pessoaDefinida.getNome() +
                "\n Nascimento: " + pessoaDefinida.getDate().toString() +
                "\n Sexo: " + pessoaDefinida.getSexo().name());

        Aluno alunoIndefinido = new Aluno();
        Aluno alunoDefinido = new Aluno("Érico", new Date(96,5,20,3,45), SexoEnum.MASCULINO, "00011010", NivelEnum.GRADUACAO);

        System.out.println("\n------------------\n");

        System.out.println("\nAluno indefinido -- " +
                "\n Nome: " + alunoIndefinido.getNome() +
                "\n Nascimento: " + alunoIndefinido.getDate().toString() +
                "\n Sexo: " + alunoIndefinido.getSexo().name() +
                "\n Código: " + alunoIndefinido.getCodigo() +
                "\n Graduação: " + alunoIndefinido.getNivel().name());

        System.out.println("Aluno definido -- " +
                "\n Nome: " + alunoDefinido.getNome() +
                "\n Nascimento: " + alunoDefinido.getDate().toString() +
                "\n Sexo: " + alunoDefinido.getSexo().name() +
                "\n Código: " + alunoDefinido.getCodigo() +
                "\n Graduação: " + alunoDefinido.getNivel().name());

    }
}
