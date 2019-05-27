public enum NivelEnum {
    INDEFINIDO(0),
    GRADUACAO(1),
    ESPECIALIZACAO(2),
    MESTRADO(3),
    DOUTORADO(4);

    private Integer tipo;

    NivelEnum(Integer tipo) {
        this.tipo = tipo;
    }
}
