package GUIMain;

import java.awt.EventQueue;
import java.util.List;
import javax.swing.JMenuBar;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import Model.Accountant;
import Database.AccountantDao;
@SuppressWarnings("serial")
public class ViewAccountant extends JFrame {
	JMenuBar menu=new JMenuBar();
	static ViewAccountant frame;
	public ViewAccountant() {
		//Code to view data in JTable
		List<Accountant> list=AccountantDao.view();
		int size=list.size();
		//menu
		setJMenuBar(menu);
		JMenu fileMenu=new JMenu("File");
		JMenu helpMenu=new JMenu("Help");
		menu.add(fileMenu);
		menu.add(helpMenu);
		
		String data[][]=new String[size][5];
		int row=0;
		for(Accountant a:list){
			data[row][0]=String.valueOf(a.getId());
			data[row][1]=a.getName();
			data[row][2]=a.getPassword();
			data[row][3]=a.getEmail();
			data[row][4]=a.getContactno();
			row++;
		}
		String columnNames[]={"Id","Name","Password","Email","Contact No"};
		
		JTable jt=new JTable(data,columnNames);
		JScrollPane sp=new JScrollPane(jt);
		add(sp);
		
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 800, 400);
	}

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frame = new ViewAccountant();
					frame.setTitle("View Accountant");
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
}
