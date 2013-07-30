class MovieTicketPurchase
  attr_writer :general_admission, :student, :senior, :child

  def initialize(isOverLength = false,
                   is3d = false,
                   isLoge = false,
                   day = "")

    @isOverLength      = isOverLength
    @is3d              = is3d
    @isLoge            = isLoge
    @day               = day
    @general_admission = 0
    @student           = 0
    @senior            = 0
    @child             = 0
  end

  def total
    total = 0
    num_tix = 0

    num_tix += @general_admission
    num_tix += @student
    num_tix += @senior
    num_tix += @child

    if num_tix >= 20
      total = (num_tix * 600)
    else
      total += @general_admission * 1100
      total += @student * 800
      total += @senior * 600
      total += @child * 550
    end

    if @is3d == true
      total += num_tix * 300
    end

    if @isOverLength == true
      total += num_tix * 150
    end

    if @isLoge == true
      total += num_tix * 200
    end

    if @day == "saturday" || @day == "sunday"
      total += num_tix * 150
    elsif @day == "thursday" && num_tix < 20
      total += num_tix * -200
    end

    return total
  end
end
