class RulesController < ApplicationController
  def index
  end

  def result
    newline_string = "\r\n        "
    rules_string = ""

    if params[:accessor_pairs].present?
      rules_string = rules_string + "\"accessor-pairs\": \"error\"," + newline_string
    end

    if params[:arrow_body_style].present?
      rules_string = rules_string + "\"arrow-body-style\": [\"error\", \"always\"]," + newline_string
    end

    if params[:block_scoped_var].present?
      rules_string = rules_string + "\"block-scoped-var\": \"error\"," + newline_string
    end

    if  params[:camelcase].present?
      rules_string = rules_string + "\"camelcase\": \"error\"," + newline_string
    end

    if  params[:capitalized_comments].present?
      rules_string = rules_string + "\"capitalized-comments\": \"error\"," + newline_string
    end

    @result = rules_string.strip
  end
end
