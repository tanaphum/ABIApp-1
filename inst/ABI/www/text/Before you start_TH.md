#### ก่อนเริ่ม

1.  ควรระบุชนิดหรือกลุ่มของพยาธิจากลักษณะทางสัณฐานวิทยา อย่างไรก็ตาม หากไม่สามารถระบุได้เนื่องจากตัวอย่างไม่สมบูรณ์ ผู้ใช้สามารถใช้ข้อมูลทางชีววิทยาหรือข้อมูลทางคลินิคในการพิจารณากลุ่มของพยาธิที่น่าจะเป็น 

2.  ถ้ามีไฟล์ FASTA ที่จัดเรียงลำดับแล้ว (ซึ่งมีลำดับที่ต้องการตรวจสอบ) หรือค่าความแตกต่างทางพันธุกรรมแบบจับคู่ที่ได้จากหนึ่งในสิบตัวบ่งชี้ทางพันธุกรรมโมเลกุลเพื่อใช้แอปพลิเคชัน **ขนาดของไฟล์ FASTA ไม่ควรมีขนาดเกิน 2MB**

3.  หากใช้ไฟล์ FASTA ที่จัดเรียงลำดับแล้ว ควรมีขนาดไม่เกิน 20 ลำดับ และชนิดที่อยู่ในไฟล์ต้องอยู่ภายในกลุ่มของพยาธิที่เลือกไว้ สามารถทำการจัดเรียงลำดับหลายลำดับก่อนล่วงหน้าโดยใช้โปรแกรมที่ใช้งานง่าย เช่น ClustalX

4.  หากใช้ Genetic distance ค่าความแตกต่างสามารถคำนวณล่วงหน้าโดยเลือกชนิดที่คล้ายกันประมาณ 3-5 ชนิดสำหรับการวิเคราะห์ลำดับ มาคำนวนหาระยะห่างทางพันธุกรรมแบบคู่ (pairwise distance) ระหว่างรหัสพันธุกรรมของตัวอย่างที่สนใจจาก friendly-used program เช่น MEGA เป็นต้น