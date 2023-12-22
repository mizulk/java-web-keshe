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
	public void testDataBase() {
		String configPath = "src/main/resources/database-config.properties";
		String templatePath = "src/main/resources/database-config-template.properties";
		File file = new File(configPath);
		if (!file.exists()) {
			try {
				String password = JOptionPane.showInputDialog("检测到无mybatis配置文件\n请输入你的MySQL密码来生成配置文件：", "123456");
				BufferedReader in = new BufferedReader(new FileReader(templatePath));
				BufferedWriter out = new BufferedWriter(new FileWriter(file));
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
				JOptionPane.showMessageDialog(null, "创建配置文件成功，如果需要修改请到src/main/resources/mybatis-config.xml下修改密码");
			} catch (IOException e) {
				e.printStackTrace();
				JOptionPane.showMessageDialog(null, "生成配置文件失败: " + e);
			}
		}
	}
}
