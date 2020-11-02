package pojo;

import java.math.BigDecimal;

public class Mode {

    private Integer id;
    private String mode;
    private BigDecimal LRL;
    private BigDecimal URL;
    private BigDecimal AA;
    private BigDecimal VA;
    private BigDecimal APW;
    private BigDecimal VPW;
    private BigDecimal VRP;
    private BigDecimal ARP;

    @Override
    public String toString() {
        return "Mode{" +
                "id=" + id +
                ", mode='" + mode + '\'' +
                ", LRL=" + LRL +
                ", URL=" + URL +
                ", AA=" + AA +
                ", VA=" + VA +
                ", APW=" + APW +
                ", VPW=" + VPW +
                ", VRP=" + VRP +
                ", ARP=" + ARP +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public BigDecimal getLRL() {
        return LRL;
    }

    public void setLRL(BigDecimal LRL) {
        this.LRL = LRL;
    }

    public BigDecimal getURL() {
        return URL;
    }

    public void setURL(BigDecimal URL) {
        this.URL = URL;
    }

    public BigDecimal getAA() {
        return AA;
    }

    public void setAA(BigDecimal AA) {
        this.AA = AA;
    }

    public BigDecimal getVA() {
        return VA;
    }

    public void setVA(BigDecimal VA) {
        this.VA = VA;
    }

    public BigDecimal getAPW() {
        return APW;
    }

    public void setAPW(BigDecimal APW) {
        this.APW = APW;
    }

    public BigDecimal getVPW() {
        return VPW;
    }

    public void setVPW(BigDecimal VPW) {
        this.VPW = VPW;
    }

    public BigDecimal getVRP() {
        return VRP;
    }

    public void setVRP(BigDecimal VRP) {
        this.VRP = VRP;
    }

    public BigDecimal getARP() {
        return ARP;
    }

    public void setARP(BigDecimal ARP) {
        this.ARP = ARP;
    }

    public Mode(Integer id, String mode, BigDecimal LRL, BigDecimal URL, BigDecimal AA, BigDecimal VA, BigDecimal APW, BigDecimal VPW, BigDecimal VRP, BigDecimal ARP) {
        this.id = id;
        this.mode = mode;
        this.LRL = LRL;
        this.URL = URL;
        this.AA = AA;
        this.VA = VA;
        this.APW = APW;
        this.VPW = VPW;
        this.VRP = VRP;
        this.ARP = ARP;
    }

    public Mode() {
    }
}
