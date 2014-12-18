require 'singapore_sdl_calculator/version'
require 'bigdecimal'

module SingaporeSDLCalculator

  class << self

    def calculate(remuneration:)
      determine_contribution_for(remuneration)
    end

    private

    def determine_contribution_for(amount)
      rate = amount * levy_rate

      case
      when rate < minimum_levy_rate then minimum_levy_rate
      when rate > maximum_levy_rate then maximum_levy_rate
      else
        rate
      end
    end

    def levy_rate
      0.0025
    end

    def minimum_levy_rate
      2.00
    end

    def maximum_levy_rate
      11.25
    end

  end
end

