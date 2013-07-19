require_relative './../lib/movie_ticket.rb'

describe 'starting the purchase' do
  it 'returns an invoice' do
    invoice = start_purchase()
    expect(invoice).to be
  end

  it 'returns an invoice with a total' do
    invoice = start_purchase()
    expect(invoice).to be_a(Hash)
    expect(invoice[:total]).to be_an(Integer)
  end

  it 'returns a starting total of 0' do
    invoice = start_purchase()
    expect(invoice[:total]).to eq(0)
  end

  context 'when the movie is over length' do
    it 'sets a flag for overLength' do
      invoice = start_purchase(true)
      expect(invoice[:total]).to eq(0)
      expect(invoice[:isOverLength]).to eq(true)
    end

    context 'when the movie is 3d' do
      it 'sets a flag for 3d' do
        invoice = start_purchase(true, true)
        expect(invoice[:total]).to eq(0)
        expect(invoice[:isOverLength]).to eq(true)
        expect(invoice[:is3d]).to eq(true)
      end

      context 'when the movie is in the loge' do
        it 'sets a flag for loge' do
          invoice = start_purchase(true, true, true)
          expect(invoice[:isOverLength]).to eq(true)
          expect(invoice[:is3d]).to eq(true)
          expect(invoice[:isLoge]).to eq(true)
          expect(invoice[:total]).to eq(0)
        end
      end

      context 'when the movie is on the weekend' do
        it 'sets a flag for weekends' do
          invoice = start_purchase(true, true, true, "saturday")
          expect(invoice[:isOverLength]).to eq(true)
          expect(invoice[:is3d]).to eq(true)
          expect(invoice[:isLoge]).to eq(true)
          expect(invoice[:day]).to eq("saturday")
          expect(invoice[:total]).to eq(0)
        end
      end
    end
  end
end

describe 'adding tickets' do
  context 'given a 3d movie' do    
    context 'given a single general admission ticket' do
      it 'computes the total' do
        invoice = start_purchase(false, true, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1400)
      end
    end
  end

  context 'given a non-3d movie' do
    context 'given a single general admission ticket' do
      it 'computes the total' do
        invoice = start_purchase(false, false, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1100)
      end
    end
  end
  context 'given an overlength movie' do
    context ' given a single general admission ticket' do
      it 'computes the total' do
        invoice = start_purchase(true, false, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1250)
      end
    end
    context 'given a single length, 3d movie' do
      it 'computes the total' do
      invoice = start_purchase(true, true, false, "monday")
      manifest = Hash.new(0)
      manifest[:general_admission] = 1
      total = compute_total(invoice, manifest)
      expect(total).to eq(1550) 
      end
    end
    context 'given a weekend, long, 3d, box-seat movie' do
      it 'computes total' do
        invoice = start_purchase(true, true, true, "saturday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1900) 
      end
    end
  end
  context 'given 2 ga' do
    context 'with no special movie params' do
      it 'computes the total' do
        invoice = start_purchase(false, false, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 2
        total = compute_total(invoice, manifest)
        expect(total).to eq(2200)
      end
    end
  end
  context 'given 1 ga, one student' do
    context 'with no special movie params' do
      it 'computes total' do
        invoice = start_purchase(false, false, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        manifest[:student] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1900)
      end
    end
  end
  context 'given 1 of each manifest symbol' do
    context 'with no special movie params' do
      it 'computes total' do
        invoice = start_purchase(false, false, false, "monday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        manifest[:student] = 1
        manifest[:child] = 1
        manifest[:senior] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(3050)
      end
    end
  end
  context 'given 1 student, 1 ga ticket' do
    context 'with a 3d movie' do
      it 'calculates total' do
        invoice = start_purchase(false, true, false, "monday")
        manifest = Hash.new(0)
        manifest[:student] = 1
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
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
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(900)
      end
    end
    context 'one ga, one student ticket' do
      it 'reduces by 200 * 2' do
        invoice = start_purchase(false, false, false, "thursday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 1
        manifest[:student] = 1
        total = compute_total(invoice, manifest)
        expect(total).to eq(1500)
      end
    end
    context 'one group ticket' do
      it 'does NOT reduce cost by 200' do
        invoice = start_purchase(false, false, false, "thursday")
        manifest = Hash.new(0)
        manifest[:general_admission] = 20
        total = compute_total(invoice, manifest)
        expect(total).to eq(12000)
      end
    end
    context '1 ga, 1 student ticket' do
      context '3d movie & overlength' do
        it 'reduce by 200/each' do
          invoice = start_purchase(true, true, false, "thursday")
          manifest = Hash.new(0)
          manifest[:general_admission] = 1
          manifest[:student] = 1
          total = compute_total(invoice, manifest)
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