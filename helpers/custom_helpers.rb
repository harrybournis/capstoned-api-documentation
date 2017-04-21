module CustomHelpers

  Struct.new("Param", :required, :name, :type, :description)
  Struct.new("Error", :code, :description)

  def url
    current_page.data.gh_pages_path
  end

  def authentication
    return "<aside class='aside-authentication'> <img src='images/locked-padlock.svg'> Authentication Needed</aside>"
  end

  def includes
    return "<aside class='aside-includes'> Can Include other resources in the response. Available Resources: </aside>"
  end

  def includes_for(resource, usertype = nil)
    if usertype
      return "<aside class='aside-includes'> Can Include other resources in the response.
        Available Resources: #{data.includes_attr[usertype][resource].join ', '}</aside>"
    else
      return "<aside class='aside-includes student-view'> Can Include other resources in the response.
        Available Resources: #{data.includes_attr.student[resource].join ', '}</aside>
        <aside class='aside-includes lecturer-view'> Can Include other resources in the response.
        Available Resources: #{data.includes_attr.lecturer[resource].join ', '}</aside>"
    end
  end

  def method_missing(method, *args, &block)
    if method.to_s.include? "includes_"
      array = method.to_s.split '_'
      if array.length == 4
        includes_for array[2], array[3]
        #return "<aside class='aside-includes'> Can Include other resources in the response.
        # Available Resources: #{data.includes_attr[array[2]][array[3]].join ', '}</aside>"
      else
        includes_for array[2]
        #return "<aside class='aside-includes student-view'> Can Include other resources in the response.
        # Available Resources: #{data.includes_attr.student[array[2]].join ', '}</aside>
        # <aside class='aside-includes lecturer-view'> Can Include other resources in the response.
        # Available Resources: #{data.includes_attr.lecturer[array[2]].join ', '}</aside>"
      end
    end
  end

  def site_url
    return data.globals.site_url
  end

  def endpoints
    return "includes/endpoints"
  end

  def required
    return true
  end

  def optional
    return false
  end

  def param_requirement required
    if required == true
      return "required"
    elsif required == false
      return ""
    else
      return required
    end
  end

  def param required, name, type, description
    return Struct::Param.new(param_requirement(required), name, type, description)
  end

  def error code, description
    return Struct::Error.new(code, "#{error_name code} -- #{description}")
  end

  def error_authentication
    return Struct::Error.new(401, "#{error_name 401} -- Authentication Failed")
  end

  def error_includes
    return Struct::Error.new(400, "#{error_name 400} -- Invalid 'includes' parameter")
  end

  def error_association(description = nil)
    desc = "The current user is not associated with this resource"
    desc = description if description
    return Struct::Error.new(403, "#{error_name 403} -- #{desc}")
  end

  def error_not_lecturer(description = nil)
    desc = "The current user is not a Lecturer. This endpoint is only available to Lecturers."
    desc = description if description
    return Struct::Error.new(403, "#{error_name 403} -- #{desc}")
  end

  def error_not_student(description = nil)
    desc = "The current user is not a Student. This endpoint is only available to Students."
    desc = description if description
    return Struct::Error.new(403, "#{error_name 403} -- #{desc}")
  end

  def error_invalid_params(description = nil)
    desc = "Invalid Params. See response body for more info."
    desc = description if description
    return Struct::Error.new(422, "#{error_name 422} -- #{desc}")
  end

  def error_name code
    status_hash = {
      200 => 'OK',
      201 => 'Created',
      204 => 'No Content',
      400 => 'Bad Request',
      401 => 'Unauthorized',
      403 => 'Forbidden',
      422 => 'Unprocessable Entity'
    }
    return status_hash[code]
  end

  def http_request verb, url
    return render_markdown("### HTTP Request") + code_prettyprint("#{verb} #{site_url}/#{url}")
  end

  def code_prettyprint code
    return "<p><code class='prettyprint'>#{code}</code></p>"
  end

  def code_prettyprint code, klass = nil
    return "<p class='prettyprint #{klass ? klass : ''}'><code>#{code}</code></p>"
  end

  def params *params
    params_header = "<h3>Query Parameters</h3>"
    table_header = "#{params_header}<table><thead><tr><th>Required</th><th>Parameter</th><th>Type</th><th>Desription</th></tr></thead><tbody>"
    table_footer = "</tbody></table>"
    content = params.map { |param| "<tr><td>#{param.required}</td><td>#{param.name}</td><td>#{param.type}</td><td>#{param.description}</td></tr>" }.join
    return "#{table_header}#{content}#{table_footer}"
  end

  def errors *errors
    params_header = "<h3>Errors</h3>"
    table_header = "#{params_header}<table><thead><tr><th>Error Code</th><th>Meaning</th></tr></thead><tbody>"
    table_footer = "</tbody></table>"
    content = errors.map { |error| "<tr><td>#{error.code}</td><td>#{error.description}</td></tr>" }.join
    return "#{table_header}#{content}#{table_footer}"
  end

  def render_markdown markdown
    return Tilt['markdown'].new { markdown }.render
  end

  def example url, example, description = nil
    desc =  if description
              "<blockquote class='example-description'><p>Example: #{description}</p></blockquote>"
            else
              "<blockquote class='example-description'></blockquote>"
            end
    request_head = "<blockquote class='request-label'><p>Request#{example.error ? ' (Error)' : ''}</p></blockquote>"
    request = code('text') { url }
    if example.request_params.length > 2
      request += code('json') { JSON.pretty_generate(JSON.parse(example.request_params)) }
    end

    response_head = "<blockquote class='response-label'><p>Response</p></blockquote>"
    response = code('text') { "Status: #{example.status} -- #{error_name example.status}" }
    if example.response_body.length > 2
      if example.response_body.include?("&lt;html&gt;")
        response += code('html') { example.response_body }
      else
        response += code('json') { JSON.pretty_generate(JSON.parse(example.response_body)) } # JSON.parse(JSON.pretty_generate(example.response_body).to_s)
      end
    else
      response += code('json') { "{\n  \"\"\n}" }
    end

    result = desc + request_head + request + response_head + response
    return result
  end

  def example_with_headers url, example, description = nil
    desc =  if description
              "<blockquote class='example-description'><p>Example: #{description}</p></blockquote>"
            else
              "<blockquote class='example-description'></blockquote>"
            end
    response_headers = code('json') {   JSON.pretty_generate(example.response_headers) }
    request_head = "<blockquote class='request-label'><p>Request#{example.error ? ' (Error)' : ''}</p></blockquote>"
    request = code('text') { url }
    if example.request_params.length > 2
      request += code('json') { JSON.pretty_generate(JSON.parse(example.request_params)) }
    end

    response_head = "<blockquote class='response-label'><p>Response</p></blockquote>"
    response = code('text') { "Status: #{example.status} -- #{error_name example.status}" }
    if example.response_body.length > 2
      response += code('json') { JSON.pretty_generate(JSON.parse(example.response_body)) }
    else
      response += code('json') { "{\n  \"\"\n}" }
    end

    result = desc + request_head + request + response_head + response_headers + response
    return result
  end
end
