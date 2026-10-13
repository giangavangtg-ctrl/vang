# Nhật ký tương tác AI

1. **Vấn đề:** Navbar bị tràn chữ trên thiết bị nhỏ.
   *Prompt:* "Làm thế nào để sử dụng thuộc tính flex-wrap kết hợp với CSS để Navbar trên điện thoại tự động đẩy các menu xuống dòng dưới mà không che khuất Logo?"
   *Kết quả:* AI gợi ý dùng `display: flex; justify-content: space-between; flex-wrap: wrap; gap: 15px;`. Thuộc tính gap giúp các phần tử khi rớt dòng không bị dính sát vào nhau.

2. **Vấn đề:** Tạo cấu trúc Bento Box.
   *Prompt:* "Hãy cho tôi xem một cú pháp CSS Grid đơn giản để tạo layout Bento Box: 1 hình vuông lớn bên trái chiếm 2x2, và 2 hình vuông nhỏ bên phải."
   *Kết quả:* Nhận được giải pháp làm phẳng DOM. Thay vì bọc cột, AI hướng dẫn gán `grid-column: span 2` và `grid-row: span 2` cho phần tử lớn. 

3. **Vấn đề:** Thay thế Media Queries tự viết.
   *Prompt:* "Trong Bootstrap 5, sự khác biệt giữa lớp col-sm-4 và col-md-4 là gì?"
   *Kết quả:* AI giải thích điểm ngắt (breakpoints). `col-md-4` giữ 3 cột từ màn hình >=768px và tự động xếp thành 1 cột ở Mobile, đáp ứng chính xác yêu cầu của khu vực Bảng giá mà không tốn công viết CSS.
GIẢI ĐÁP VẤN ĐÁP:
Flexbox và CSS Grid có thể kết hợp với nhau không?
Hoàn toàn có. Chúng bổ trợ cho nhau rất tốt. Trong bài thực hành, CSS Grid được dùng ở thẻ cha .grid-dashboard để chia cấu trúc 3 cột tổng thể. Bên trong mỗi .widget, Flexbox được sử dụng (display: flex; justify-content: center; align-items: center;) để căn giữa biểu tượng và dòng chữ một cách hoàn hảo theo không gian 1 chiều.

Tại sao Bootstrap Grid lại dùng Flexbox ngầm bên dưới? Ưu điểm của Bootstrap?
Từ Bootstrap 4, hệ thống .row và .col-* được xây dựng bằng Flexbox để tận dụng khả năng căn chỉnh tự động, trật tự linh hoạt (order) và chiều cao bằng nhau (equal height columns) mà CSS Float cũ không làm được. Ưu điểm của việc dùng Bootstrap cho Pricing là tốc độ triển khai cực nhanh (Rapid Prototyping), duy trì chuẩn mực chung trong team (ai cũng hiểu .col-md-4 là gì), và không làm phình to file CSS thuần với các Media Queries lặp lại.

Cấu trúc Zig-zag thì dùng Grid hay Flexbox?
Chắc chắn là CSS Grid. Layout zig-zag đan xen là cấu trúc không gian 2 chiều (kiểm soát đồng thời cả trục X và Y). Với Grid, ta có thể dùng grid-template-areas hoặc tọa độ line để xếp các khối đan xen nhau một cách chính xác. Nếu dùng Flexbox, ta sẽ phải tạo rất nhiều thẻ div bọc ngoài (wrappers) để ngắt dòng nhân tạo, quay lại "vết xe đổ" của Div Soup.