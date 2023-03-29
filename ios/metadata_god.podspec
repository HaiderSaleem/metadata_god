#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint metadata_god.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'metadata_god'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Kingkor Roy Tirtho' => 'krtirtho@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.script_phase = {
    :name => 'Build SuperNativeExtensions Rust library',
    :script => 'sh $PODS_TARGET_SRCROOT/../cargokit/build_pod.sh ../rust metadata_god',
    :execution_position=> :before_compile,
    :input_files => ['${BUILT_PRODUCTS_DIR}/cargokit_phony'],
    :output_files => ['${BUILT_PRODUCTS_DIR}/cargokit_phony_out'],
  }
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    # Flutter.framework does not contain a i386 slice.
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    # Rust can't produce armv7 and it's being removed from Flutter as well
    'EXCLUDED_ARCHS' => 'armv7',
    # For static lib we need better control of re-exported symbols
    # 'EXPORTED_SYMBOLS_FILE' => '$PODS_TARGET_SRCROOT/../rust/symbols.txt',
    'OTHER_LDFLAGS' => '-lmetadata_god -framework CoreServices',
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS' => 'armv7',
  }
end