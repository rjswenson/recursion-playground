require_relative './../lib/movie_ticket.rb'

describe 'starting the purchase' do
  it 'returns a starting total of 0' do
    purch = MovieTicketPurchase.new
    expect(purch.total).to eq(0)
  end
end

describe 'adding tickets' do
  context 'given a 3d movie' do
    context 'given a single general admission ticket' do
      it 'computes the total' do
        purchase = MovieTicketPurchase.new(false, true, false, 'monday')
        purchase.general_admission = 1
        expect(purchase.total).to eq(1400)
      end
    end
  end

  context 'given a non-3d movie' do
    context 'given a single general admission ticket' do
      it 'computes the total' do
        purchase = MovieTicketPurchase.new(false, false, false, 'monday')
        purchase.general_admission = 1
        expect(purchase.total).to eq(1100)
      end
    end
  end
  context 'given an overlength movie' do
    context ' given a single general admission ticket' do
      it 'computes the total' do
        purchase = MovieTicketPurchase.new(true, false, false, 'monday')
        purchase.general_admission = 1
        expect(purchase.total).to eq(1250)
      end
    end
    context 'given a single length, 3d movie' do
      it 'computes the total' do
        purchase = MovieTicketPurchase.new(true, true, false, 'monday')
        purchase.general_admission = 1
        expect(purchase.total).to eq(1550)
      end
    end
    context 'given a weekend, long, 3d, box-seat movie' do
      it 'computes total' do
        purchase = MovieTicketPurchase.new(true, true, true, 'saturday')
        purchase.general_admission = 1
        expect(purchase.total).to eq(1900)
      end
    end
  end
  context 'given 2 ga' do
    context 'with no special movie params' do
      it 'computes the total' do
        purchase = MovieTicketPurchase.new(false, false, false, 'monday')
        purchase.general_admission = 2
        expect(purchase.total).to eq(2200)
      end
    end
  end
  context 'given 1 ga, one student' do
    context 'with no special movie params' do
      it 'computes total' do
        invoice = start_purchase(false, false, false, "monday")
        manifest = Hash.new(0)
        invoice[:general_admission] = 1
        invoice[:student] = 1
        invoice[:senior] = 0
        invoice[:child] = 0
        total = compute_total(invoice)
        expect(total).to eq(1900)
      end
    end
  end
  context 'given 1 of each manifest symbol' do
    context 'with no special movie params' do
      it 'computes total' do
        invoice = start_purchase(false, false, false, "monday")
        invoice[:general_admission] = 1
        invoice[:student] = 1
        invoice[:senior] = 1
        invoice[:child] = 1
        total = compute_total(invoice)
        expect(total).to eq(3050)
      end
    end
  end
  context 'given 1 student, 1 ga ticket' do
    context 'with a 3d movie' do
      it 'calculates total' do
        invoice = start_purchase(false, true, false, "monday")
        invoice[:general_admission] = 1
        invoice[:student] = 1
        invoice[:senior] = 0
        invoice[:child] = 0
        total = compute_total(invoice)
        expect(total).to eq(2500)
      end
    end
  end
end

describe 'Its Thursday!' do
  context 'adjusts price down for thursday' do
    context 'one general admission ticket' do
      it 'reduces by 200' do
        invoice = start_purchase(false, false, false, "thursday")
        invoice[:general_admission] = 1
        invoice[:student] = 0
        invoice[:senior] = 0
        invoice[:child] = 0
        total = compute_total(invoice)
        expect(total).to eq(900)
      end
    end
    context 'one ga, one student ticket' do
      it 'reduces by 200 * 2' do
        invoice = start_purchase(false, false, false, "thursday")
        invoice[:general_admission] = 1
        invoice[:student] = 1
        invoice[:senior] = 0
        invoice[:child] = 0
        total = compute_total(invoice)
        expect(total).to eq(1500)
      end
    end
    context 'one group ticket' do
      it 'does NOT reduce cost by 200' do
        invoice = start_purchase(false, false, false, "thursday")
        invoice[:general_admission] = 20
        invoice[:student] = 0
        invoice[:senior] = 0
        invoice[:child] = 0
        total = compute_total(invoice)
        expect(total).to eq(12000)
      end
    end
    context '1 ga, 1 student ticket' do
      context '3d movie & overlength' do
        it 'reduce by 200/each' do
          invoice = start_purchase(true, true, false, "thursday")
          invoice[:general_admission] = 1
          invoice[:student] = 1
          invoice[:senior] = 0
          invoice[:child] = 0
          total = compute_total(invoice)
          expect(total).to eq(2400)
        end
      end
    end
  end
end




# Shark 3D, overlength movie

# step1: Jim walks up to register and says he wants to go to
# shark 3d movie

# invoice = start_purchase(true, true)

# step 2: ask jim how many tickets he wants... he says 2

# add_ticket(invoice)
# add_ticket(invoice)

# step 3: tell jim how much his total is

# total = invoice[:total]
