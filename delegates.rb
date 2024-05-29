# delegates.rb

class CustomDelegate
	def authorization(identifier, request_headers, client_ip, cookies, session)
	  return IIIFAuthorizationResponse.new('https://example.com/login')
	end
  
	def extra_iiif2_information_response_keys(identifier, properties, context)
	  return {
		'description' => 'A description of this image',
		'attribution' => 'Provided by Example Organization'
	  }
	end
  end
  