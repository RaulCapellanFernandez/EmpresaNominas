/*import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Date;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;


public class PdfWritter {

	public Factura nuevo=new Factura();

	public static File ficheroPDF=new File("resources/factura.pdf");
	
	public PdfWritter() {
		// TODO Auto-generated constructor stub
	}

	public void escribir_Pdf(Persona trabajador, Date fecha, int num){


		try {	
			Document document = new Document();

			PdfWriter.getInstance(document, new FileOutputStream(ficheroPDF));

			document.open();

			document.add(new Paragraph(trabajador.getNom_empresa() +"			 CIF: "+trabajador.getCif()+"\n\n\n"));

			document.add(new Paragraph("Destinatario: "));
			document.add(new Paragraph("           		 " + trabajador.getNombre()+" "+trabajador.getApellido1()+" "+trabajador.getApellido2()));
			document.add(new Paragraph("           		 " +"DNI : "+trabajador.getNif()));
			document.add(new Paragraph("           		 " +"Categor�a : "+trabajador.getCategoria()));
			document.add(new Paragraph("           		 " +"Antig�edad : "+trabajador.getFecha_AltaLab()+"\n\n"));
			document.add(new Paragraph("                                                   		 " +"Periodo liquidacion :"+fecha.toString()+"\n\n"));
			document.add(new Paragraph("Salario base :                                  		 " +nuevo.getSalario_base(trabajador.getCategoria(), trabajador)));
			document.add(new Paragraph("Complemento	 :                                 			 " +nuevo.getComplementos(trabajador.getCategoria(), trabajador)));
			document.add(new Paragraph("Antig�edad   :                                 			 " +nuevo.getTrienios(fecha, trabajador.getFecha_AltaLab(), trabajador)));

			document.add(new Paragraph("Prorrateo                                             "+nuevo.getProrrateo(fecha, trabajador.getProrrataExtra(), trabajador.getCategoria(), trabajador)));
			document.add(new Paragraph("Contingencias generales   4.7 % :                       "+nuevo.getContingencias_Comunes(trabajador.getCategoria()) ));
			document.add(new Paragraph("Desempleo                 1,6 % :                       "+nuevo.getDesempleo_trabajador(trabajador.getCategoria())));
			document.add(new Paragraph("Cuota formaci�n           0.1 % :                       "+nuevo.getFormacion_trabajador(trabajador.getCategoria())));
			document.add(new Paragraph("IRPF                      "+nuevo.porcen_IRPF(trabajador.getCategoria(), trabajador, fecha)+" % :                       "+nuevo.calculo_Irpf(trabajador.getCategoria(), trabajador, trabajador.getFecha_AltaLab(), fecha)+"\n\n"));

			double fin1=nuevo.getDesempleo_trabajador(trabajador.getCategoria())+nuevo.getFormacion_trabajador(trabajador.getCategoria())+nuevo.calculo_Irpf(trabajador.getCategoria(), trabajador, trabajador.getFecha_AltaLab(), fecha) +nuevo.getContingencias_Comunes(trabajador.getCategoria());
			document.add(new Paragraph("Total deducciones(desempleo, formacion, Irpf):         "+fin1));

			double fin2=nuevo.getSalario_base(trabajador.getCategoria(), trabajador)+nuevo.getComplementos(trabajador.getCategoria(), trabajador)+nuevo.getTrienios(fecha, trabajador.getFecha_AltaLab(), trabajador)+nuevo.getProrrateo(fecha, trabajador.getProrrataExtra(), trabajador.getCategoria(), trabajador);
			document.add(new Paragraph("Total devengos(salario base, complementos y trienios): "+fin2+"\n\n"));

			double total=fin2-fin1;

			document.add(new Paragraph("L�quido a percibir :       						"+total+"\n\n\n"));
			document.add(new Paragraph("A ingresar en cuenta :     					    "+trabajador.getIban()+"\n\n\n"));
			document.add(new Paragraph("EMPRESARIO"+"\n"));
			document.add(new Paragraph("Contingencias comunes empresario :               "+nuevo.getContingencias_Comunes(trabajador.getCategoria()) ));
			document.add(new Paragraph("Desempleo empresario :                           "+nuevo.getDesempleo(trabajador.getCategoria())));
			document.add(new Paragraph("Formaci�n empresario :                           "+nuevo.getFormacion_empresario(trabajador.getCategoria())));
			document.add(new Paragraph("Accidentes trabajo empresario :                  "+nuevo.getAccidentes(trabajador.getCategoria())));
			document.add(new Paragraph("FOGASA empresario :                              "+nuevo.getFogasa(trabajador.getCategoria())+"\n\n"));
			double totEmp=nuevo.getContingencias_Comunes(trabajador.getCategoria())+nuevo.getDesempleo(trabajador.getCategoria())+nuevo.getFormacion_empresario(trabajador.getCategoria()+nuevo.getFogasa(trabajador.getCategoria()));

			document.add(new Paragraph("TOTAL empresario :                                                               "+totEmp));

			document.close();

		} catch (FileNotFoundException | DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}*/
