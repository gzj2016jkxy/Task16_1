package com.gzj.task4;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

/**
 * 文件查找类
 */
public class SearchFile {
    /**
     * 查找指定文件夹path下后缀名为Suffix的所有文件
     *
     * @param path
     * @param Suffix
     */
    public static void searchFilesBySuffix(String path, String Suffix) {
        try {
            File f=new File(path);
            if (!f.exists()){
                System.out.println("目录不存在，请检查！");
                return;
            }

            if(f.isDirectory()){
                File[] listFile=f.listFiles(getFileExtensionFilter(Suffix));
                for (int i = 0; i < listFile.length; i++)
                    System.out.println(listFile[i].toString());
                listFile = f.listFiles(getNotDirFileFilter());
                for (int i = 0; i < listFile.length; i++)
                    if (listFile[i].isDirectory())
                        searchFilesBySuffix(listFile[i].toString(),Suffix);

            }

        }catch (Exception ex){
            System.out.println("出现错误，请检查输入的路径是否是有效！");
            System.out.print("错误信息为：");
            ex.printStackTrace();
        }
    }

    public static FilenameFilter getFileExtensionFilter(String extension) {// 指定扩展名过滤
        final String _extension = extension;
        return new FilenameFilter() {
            public boolean accept(File file, String name) {
                boolean ret = name.endsWith(_extension);
                return ret;
            }
        };
    }

    public static FileFilter getNotDirFileFilter() { // 文件还是目录过滤

        return new FileFilter() {

            public boolean accept(File file) {

                return file.isDirectory();//关键判断点

            }

        };

    }
}
