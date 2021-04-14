package com.grimm.converter.extend;

import com.grimm.converter.impl.ConverterImpl;
import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.CardEntity;
import com.grimm.model.request.CardRequest;
import com.grimm.model.response.BlogResponse;
import com.grimm.model.response.CardResponse;

import java.util.ArrayList;
import java.util.List;

public class CardConverter extends ConverterImpl<CardRequest, CardResponse, CardEntity> {
    @Override
    public CardEntity converToEntity(CardEntity cardEntity, CardRequest cardRequest) {
        return super.converToEntity(cardEntity, cardRequest);
    }

    @Override
    public CardResponse converToResponse(CardResponse cardResponse, CardEntity cardEntity) {
        return super.converToResponse(cardResponse, cardEntity);
    }

    @Override
    public List<CardResponse> convertToListResponse(List<CardEntity> cardEntities) {
        List<CardResponse> vs = new ArrayList<>();
        for (CardEntity cardEntity: cardEntities) {
            CardResponse cardResponse = new CardResponse();
            cardResponse= converToResponse(cardResponse,cardEntity);
            vs.add(cardResponse);
        }
        return vs;
    }
}
