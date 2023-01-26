package com.zjp.util;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class GeneratorUtil {
    public static void main(String[] args) throws Exception {
        List<String> warnings = new ArrayList<String>();
//        当生成的代码重复时  是否覆盖
        boolean overwrite = true;
        // A  ssm-zjp-sellTicket 根路径
        // B  ssm-zjp-sellTicket/../resources
        // C  ssm-zjp-sellTicket/../java/com.sell.util
        // D  ssm-zjp-sellTicket/../webapp

        File configFile = new File("mybatis/generatorConfig.xml");
        //File configFile = new File("a.xml");
//            if (!configFile.exists()) {
//                System.out.println("文件不存在");
//            }

        ConfigurationParser cp = new ConfigurationParser(warnings);
        Configuration config = cp.parseConfiguration(configFile);
        DefaultShellCallback callback = new DefaultShellCallback(overwrite);
        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
        myBatisGenerator.generate(null);

        for (String warning : warnings) {
            System.out.println(warning);
        }
    }
}

