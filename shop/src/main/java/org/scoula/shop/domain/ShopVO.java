package org.scoula.shop.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ShopVO {
    private Long no;
    private String categorie;
    private String sex;
    private String clothTitle;
    private float star;
    private int discount;
    private int price;
    private String image;
    private String description;
    private Date regDate;

}
