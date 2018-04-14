Pod::Spec.new do |spec|
	spec.name = "AsyncOperationResult"
	spec.version = "1.0.1"
	spec.summary = "Asynchronous Operations Results in Swift"
	spec.homepage = "https://www.happn.com/"
	spec.license = {type: 'TBD', file: 'License.txt'}
	spec.authors = {"François Lamboley" => 'francois.lamboley@happn.com'}
	spec.social_media_url = "https://twitter.com/happn_tech"

	spec.requires_arc = true
	spec.source = {git: "git@github.com:happn-app/AsyncOperationResult.git", tag: spec.version}
	spec.source_files = "Sources/AsyncOperationResult/*.swift"

	spec.osx.deployment_target = '10.9'
	spec.tvos.deployment_target = '9.0'
	spec.ios.deployment_target = '8.0'
	spec.watchos.deployment_target = '2.0'
end
