require 'singapore_sdl_calculator/version'
require 'bigdecimal'

module SingaporeSDLCalculator

  class << self

    def calculate(remuneration:)
      determine_contribution_for(remuneration)
    end

    private

    def determine_contribution_for(amount)
      bounded(amount * levy_rate)
    end

    def levy_rate
      BigDecimal "0.0025"
    end

    def minimum_levy_rate
      BigDecimal "2.00"
    end

    def maximum_levy_rate
      BigDecimal "11.25"
    end

    # For any value within the bounds it returns the original value. Otherwise returns the lower limit or upper limit
    # depending on which limit is closer.
    def bounded(rate)
      [[rate, maximum_levy_rate].min, minimum_levy_rate].max
    end

  end
end

