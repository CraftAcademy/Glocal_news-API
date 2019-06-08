RSpec.describe Review, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :score }
    it { is_expected.to have_db_column :comment }
  end

  describe 'Validations' do 
    it { is_expected.to validate_presence_of(:score) }
    it { is_expected.to validate_presence_of(:comment) }
  end

  describe 'Relations' do
    it { is_expected.to belong_to :article }
    it { is_expected.to belong_to :user }
  end

  describe 'Factory' do
    let(:user) { FactoryBot.create(:user, email: 'george@email.com') }
    it 'should have valid factory' do
      expect(FactoryBot.create(:review, user_id: user.id)).to be_valid
    end
  end
end
