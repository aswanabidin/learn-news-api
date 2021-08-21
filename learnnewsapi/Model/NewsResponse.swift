//
//  NewsResponse.swift
//  learnnewsapi
//
//  Created by Aswan Abidin on 19/08/21.
//

import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let source: Source
    let author: String?
    let title: String
    let articleDescription: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}

extension Article {
    
    /*
     {
        "source": {
            "id": "google-news",
            "name": "Google News"
        },
        "author": null,
        "title": "Jupiter Bakal Terlihat Terang Pekan Ini, Bisa Diamati Walau Tanpa Teleskop! - Wowkeren Media",
        "description": null,
        "url": "https://news.google.com/__i/rss/rd/articles/CBMiNGh0dHBzOi8vd3d3Lndvd2tlcmVuLmNvbS9iZXJpdGEvdGFtcGlsLzAwMzgwODg4Lmh0bWzSAThodHRwczovL3d3dy53b3drZXJlbi5jb20vYW1wL2Jlcml0YS90YW1waWwvMDAzODA4ODguaHRtbA?oc=5",
        "urlToImage": null,
        "publishedAt": "2021-08-20T04:19:52Z",
        "content": null
     */
    
    static var dummyData: Article {
        .init(source: Source(id: "id", name: "source"),
              author: "Aswan",
              title: "Jupiter Bakal Terlihat Terang Pekan Ini, Bisa Diamati Walau Tanpa Teleskop!",
              articleDescription: "description",
              url: "https://news.google.com/articles",
              urlToImage: "image",
              publishedAt: Date(),
              content: "content"
        )
    }
}
