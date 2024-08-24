package org.scoula.shop.mapper;

import lombok.extern.log4j.Log4j;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.scoula.config.RootConfig;
import org.scoula.shop.domain.ShopVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = { RootConfig.class})
@Log4j
class ShopMapperTest {

    @Autowired
    private ShopMapper mapper;

    @Test
    @DisplayName("shop의 목록 불러오기")
    public void getList() {
        for(ShopVO shop : mapper.getList()) {
            log.info(shop);
        }
    }
}