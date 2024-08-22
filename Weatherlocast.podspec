
Pod::Spec.new do |spec|


  spec.name         = "Weatherlocast"
  spec.version      = "1.0.0"
  spec.summary      = "Weatherlocast."
  spec.description  = "Weather description by city"
  spec.homepage     = "https://github.com/Arun1303/Weatherlocast"
  spec.license      = "MIT"
  spec.author             = { "Arun1303" => "arunv130397@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/Arun1303/Weatherlocast.git", :tag => spec.version.to_s }

  spec.source_files  = "Weatherlocal/Weatherlocast/**/*.{h}", "Classes/**/*.{h,m}"
  spec.swift_version  = "5.0"

end
