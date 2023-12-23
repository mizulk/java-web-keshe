package team.skadi.javaweb;


import org.junit.jupiter.api.Test;

import javax.swing.JOptionPane;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class MainTest {

	@Test
	public void setUpDataBase() {
		String configPath = "src/main/resources/database-config.properties";
		String templatePath = "src/main/resources/database-config-template.properties";
		File file = new File(configPath);
		try {
			if (!file.exists()) {

				String password = JOptionPane.showInputDialog("检测到无数据库配置文件\n请输入你的MySQL密码来生成配置文件：", "123456");
				writeFile(templatePath, file, password);
				JOptionPane.showMessageDialog(null, "创建配置文件成功，如果需要更改请再次运行本程序。");
			} else {
				int i = JOptionPane.showConfirmDialog(null, "已存在数据库配置文件，是否需要更改密码？", "请选择", JOptionPane.YES_NO_OPTION);
				if (i == JOptionPane.YES_OPTION) {
					String password = JOptionPane.showInputDialog("请输入你的MySQL密码来x修改配置文件：", "123456");
					writeFile(templatePath, file, password);
					JOptionPane.showMessageDialog(null, "修改配置文件成功，如果需要再更改请再次运行本程序。");
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "生成配置文件失败: " + e);
		}
	}

	private void writeFile(String inputFile, File outPutFile, String password) throws IOException {
		BufferedReader in = new BufferedReader(new FileReader(inputFile));
		BufferedWriter out = new BufferedWriter(new FileWriter(outPutFile));
		String line;
		while ((line = in.readLine()) != null) {
			if (line.contains("password"))
				out.write("jdbc.password = " + password);
			else
				out.write(line + "\n");
		}
		out.flush();
		out.close();
		in.close();
	}
}
