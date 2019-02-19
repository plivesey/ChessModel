Pod::Spec.new do |spec|

  spec.name         = "ChessModel"
  spec.version      = "0.0.1"
  spec.summary      = "A chess model written in Swift"

  spec.description  = "A chess model written in Swift"

  spec.homepage     = "https://github.com/plivesey/ChessModel"

  spec.license      = "MIT"
  spec.license      = { :type => "MIT"}

  spec.author             = { "Peter Livesey" => "plivesey453@gmail.com" }

  spec.source       = { :git => "https://github.com/plivesey/ChessModel.git" }

  spec.source_files  = 'ChessModel/**/*.swift'
end
