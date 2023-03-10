//
//  File.swift
//  
//
//  Created by MacbookPro13 on 12/01/23.
//

import Core
import Combine

public struct UpdateFavoriteMealRepository<
    MealLocaleDataSource: LocaleDataSource,
    Transformer: Mapper>: Repository
where
    MealLocaleDataSource.Request == String,
    MealLocaleDataSource.Response == MealEntity,
    Transformer.Request == String,
    Transformer.Response == MealResponse,
    Transformer.Entity == MealEntity,
    Transformer.Domain == MealModel {
    
    public typealias Request = String
    public typealias Response = MealModel
    
    private let _localeDataSource: MealLocaleDataSource
    private let _mapper: Transformer
    
    public init(
        localeDataSource: MealLocaleDataSource,
        mapper: Transformer) {
        
        _localeDataSource = localeDataSource
        _mapper = mapper
    }
    
    public func execute(request: String?) -> AnyPublisher<MealModel, Error> {
        return _localeDataSource.get(id: request ?? "")
            .map { _mapper.transformEntityToDomain(entity: $0) }
            .eraseToAnyPublisher()
    }
}
