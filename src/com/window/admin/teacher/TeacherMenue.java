package com.window.admin.teacher;

import com.window.admin.Menue;
import com.window.admin.student.DeleteStudent;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class TeacherMenue {
    private JFrame jFrame;
    private JPanel jPanel;
    private GridLayout layout;
    private JButton getAll;
    private JButton breaks;


    public void show(){
        jFrame = new JFrame();
        jFrame.setBounds(400,100,500,300);
        jFrame.add(panel());
        jFrame.setVisible(true);
    }
    public JPanel panel(){
        layout = new GridLayout(2, 1);
        jPanel = new JPanel(layout);

        getAll = new JButton("查询教师信息");
        jPanel.add(getAll);
        getAll.addActionListener(new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new GetallTeacher().show();
            }
        });
        breaks = new JButton("返回");
        jPanel.add(breaks);
        breaks.addActionListener(new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new Menue().show();
                jFrame.setVisible(false);
            }
        });
        return jPanel;
    }
}


